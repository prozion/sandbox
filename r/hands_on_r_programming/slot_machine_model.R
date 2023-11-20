#!/usr/bin/env Rscript

library(dplyr)

wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
prob <- c(0.03, 0.03, 0.06, 0.1, 0.25, 0.01, 0.52)

recalculate_with_diamonds <- function(symbols, prize) {
  prize_if = vector("double", length(wheel) - 1)
  original_symbols = symbols
  for(i in 2:length(wheel)) {
    symbols = original_symbols
    symbols[symbols == "DD"] <- wheel[i]
    if(wheel[i] == "C" && 0 == sum(original_symbols == "C")) {
      next
    }
    prize_if[i] <- score(symbols)
  }
  max(prize_if)
}

score <- function(symbols) {
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")

  # payouts <- c(800, 80, 40, 5, 10, 10, 0)
  # names(payouts) <- c("DD", "7", "BBB", "BB", "B", "C", "0")

  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 25, "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else {
    cherries = sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1];
    if ("DD" %in% symbols) {
      prize <- recalculate_with_diamonds(symbols, prize)
    }
  }

  diamonds <- sum(symbols == "DD")
  prize * (2 ^ diamonds)
}

names(prob) <- wheel

combos <- expand.grid(wheel, wheel, wheel, stringsAsFactors = F)

combos$prob <- with(combos, prob[Var1]*prob[Var2]*prob[Var3])

for(i in 1:nrow(combos)) {
  combos$score[i] = score(combos[i, c("Var1", "Var2", "Var3")] |> unlist())
}

sum(combos$score * combos$prob)
# combos[combos == c("DD", "0", "7")]
# score(c("DD", "0", "7"))
