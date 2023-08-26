#lang sicp
(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;(sqrt 2)

;; Due to Scheme's applicative-order execution, the arguments of new-if procedure have to be evaluated first.
;; Args.: quess, (sqrt-iter (improve guess x) x), the latter of which is a recursion, which will call a new new-if procedure execution,
;; causing an infinite loop.

;; The standard if does not need to evaluate all arguments first.