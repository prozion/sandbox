#!/usr/bin/env Rscript

budget <- 0

get_symbols <- function() {
  wheel <- c("DD", "7", "BBB", "BB", "B", "C", "0")
  sample(wheel, size = 3, replace = TRUE,
    prob = c(0.03, 0.03, 0.06, 0.1, 0.25, 0.1, 0.52))
}

# all_bars <- function(chars) {
#   all(chars %in% c("B", "BB", "BBB"))
# }

score <- function(symbols) {
  same <- symbols[1] == symbols[2] && symbols[2] == symbols[3]
  bars <- symbols %in% c("B", "BB", "BBB")

  # payouts <- c(800, 80, 40, 5, 10, 10, 0)
  # names(payouts) <- c("DD", "7", "BBB", "BB", "B", "C", "0")

  if (same) {
    payouts <- c("DD" = 100, "7" = 80, "BBB" = 40, "BB" = 5, "B" = 10, "C" = 10, "0" = 0)
    prize <- unname(payouts[symbols[1]])
  } else if (all(bars)) {
    prize <- 5
  } else {
    cherries = sum(symbols == "C")
    prize <- c(0, 2, 5)[cherries + 1];
  }

  diamonds <- sum(symbols == "DD")
  prize * (2 ^ diamonds)
}

turn_the_handle <- function() {
  budget <<- budget - 1
  symbols <- get_symbols()
  current_score <- score(symbols)
  print(symbols)
  print(current_score)
  budget <<- budget + current_score
  print(sprintf("Your budget is %s", budget))
}

add_coins <- function(coins) {
  budget <<- budget + coins
}

play <- function() {
  add_coins(12)
  while(budget > 0) {
    # to_continue <- readline("Turn the handle (Y) or grab the cash (N)? ")
    print("Turn the handle (ENTER) or grab the cash (N)?")
    to_continue <- readLines(con = "stdin", n = 1)
    if (tolower(to_continue) == "n") {
      print(sprintf("Dzhhzdzzzz-zzzz take your fortune in the cashbox: %s coins", budget))
      return(T)
    } else {
      turn_the_handle()
    }
  }
  print("Alas! You depleted all your budget! Insert new coins to the machine or get the fucking out!")
}

play()
