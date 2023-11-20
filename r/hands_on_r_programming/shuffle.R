#!/usr/bin/env Rscript

setup <- function(deck) {
  # DECK <- deck

  DEAL <- function() {
    card <- deck[1, ]
    assign("deck", deck[-1, ], envir = parent.env(environment()))
    card
  }

  SHUFFLE <- function(){
    random <- sample(1:52, size = 52)
    assign("deck", deck[random, ], envir = parent.env(environment()))
 }

 get_deck <- function() {
   deck
 }

 list(deal = DEAL, shuffle = SHUFFLE, get_deck = get_deck)
}

cards <- setup(readRDS("deck.rds"))
print(head(cards$get_deck()))
cards$deal()
print(head(cards$get_deck()))
cards$shuffle()
print(head(cards$get_deck()))
