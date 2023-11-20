#!/usr/bin/env Rscript

f <- function() {
  print(environment())
  someTopEnv <- environment() |> parent.env() |> parent.env()
  print(someTopEnv)
  T
}

f()
