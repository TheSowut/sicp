#lang sicp

(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

;; Applicative-order
;; 1) 0 will be assigned to x
;; 2) procedure (p) will be assigned to y and the interpretator will try to evaluate (p)
;; 3) infinite loop

;; Normal-order
;; 1) 0 will be assigned to x
;; 2) the conditional statement will be evaluated, and since we have 0 = 0, we will exit with the first consequent expression - 0
;; 3) the value of 0 is returned
;; (p) is never executed, since it isn't reached in the code and the infinite loop is avoided
