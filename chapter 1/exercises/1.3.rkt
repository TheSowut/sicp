#lang sicp

;; Square a number
(define (square x) (* x x))

;; Sum two squared numbers
(define (sum-squared x y) (+ (square x) (square y)))

;; Consume three numbers, determine the two largest ones,
;; square them and return their sum.
(define (sum-of-square-of-largest-two-numbers x y z)
  (cond ((and (> x y) (< y z)) (sum-squared x z))
        ((and (< x y) (< x z)) (sum-squared y z))
        (else (sum-squared x y))))

(sum-of-square-of-largest-two-numbers 5 2 3)
(sum-of-square-of-largest-two-numbers 2 5 3)
(sum-of-square-of-largest-two-numbers 2 3 1)
