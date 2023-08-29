#lang sicp

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cube-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cube-iter (improve guess x) x)))

(define (good-enough? previous-guess guess)
  (< (abs (/(- guess previous-guess) guess)) 0.00000000001))


(define (improve guess x)
 (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (cube-root x)
  (cube-iter 1.0 x))

(cube-root 9)

