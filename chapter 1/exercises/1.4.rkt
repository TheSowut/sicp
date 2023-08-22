#lang sicp

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b  2      5)
(a-plus-abs-b  2     -5)

;; The conditional expression will determine the predicate of the expression.
;; If b is less than 0, it will use -, making it a positive integer.
;; (>  2 0) -> #t -> + -> (+ a b) -> (+ 2  5) -> 7
;; (> -5 0) -> #f -> - -> (- a b) -> (- 2 -5) -> 7

;; Breakdown using Applicative-order evaluation
((if (> 5 0) + -) 2 5)
((if #t      + -) 2 5)
(+ 2 5)
7

((if (> -5 0) + -) 2 -5)
((if #f       + -) 2 -5)
(- 2 -5)
7