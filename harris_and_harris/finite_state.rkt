#lang racket

(require odysseus)

(provide (all-defined-out))

(define (0? bit) (= bit 0))
(define (1? bit) (= bit 1))

(define (or . bits)
  (if (> (apply + bits) 0) 1 0))

(define (and . bits)
  (if (= (apply * bits) 1) 1 0))

(define (xor . bits)
  (if (->> bits (filter (curry = 1)) length odd?)
    1
    0))

(define (finite-state-machine-2 #:function (function or) #:state (state 0))
  (λ (#:reset (reset 0) (a 0) (b 0))
    (set! state (if (= reset 1)
                    0
                    (function state a b)))
    state))

;;;;;;;;;;;;; test ;;;;;;;;;;;;;;;
(define foo (finite-state-machine-2 #:function xor))

(foo #:reset 1)
(foo 0 1)
(foo #:reset 1)
(foo 0 0)
(foo 1 0)
