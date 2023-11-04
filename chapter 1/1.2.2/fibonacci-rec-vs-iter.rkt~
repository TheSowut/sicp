#lang sicp

;recursion
(define (fibonacci n)
  (cond ([= n 0] 0)
        ([= n 1] 1)
        (else (+
               (fibonacci (- n 1))
               (fibonacci (- n 2))))))

;; substitution model
(fibonacci 8)
(+ (fibonacci 7) (fibonacci 6))
(+ (fibonacci 6) (fibonacci 5) (fibonacci 5) (fibonacci 4))
(+ (fibonacci 5) (fibonacci 4) (fibonacci 4) (fibonacci 3) (fibonacci 4) (fibonacci 3) (fibonacci 3) (fibonacci 2))
(+ (fibonacci 4) (fibonacci 3) (fibonacci 3) (fibonacci 2) (fibonacci 3) (fibonacci 2) (fibonacci 2) (fibonacci 1) (fibonacci 3) (fibonacci 2) (fibonacci 2) (fibonacci 1) (fibonacci 2) (fibonacci 1) (fibonacci 1))
(+ (fibonacci 3) (fibonacci 2) (fibonacci 2) (fibonacci 1) (fibonacci 2) (fibonacci 1) (fibonacci 1) (fibonacci 2) (fibonacci 1) (fibonacci 1) (fibonacci 1) 1 (fibonacci 2) (fibonacci 1) (fibonacci 1) (fibonacci 1) 1 (fibonacci 1) 1 1)
(+ (fibonacci 2) (fibonacci 1) (fibonacci 1)(fibonacci 1) 1 (fibonacci 1) 1 1 (fibonacci 1) 1 1 1 1 (fibonacci 1) 1 1 1 1 1 1 1)
(+ (fibonacci 1) 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
(+ 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1)
21

"iterative"
;iteration
(define (fibonacci-iterative a b count)
  (if (= count 0)
      b
      (fibonacci-iterative (+ a b) a (- count 1))))

(define (fib-iter n)
  (fibonacci-iterative 1 0 n))

;; substitution model
(fib-iter 8)
(fibonacci-iterative 1 0 8)
(fibonacci-iterative 1 1 7)
(fibonacci-iterative 2 1 6)
(fibonacci-iterative 3 2 5)
(fibonacci-iterative 5 3 4)
(fibonacci-iterative 8 5 3)
(fibonacci-iterative 13 8 2)
(fibonacci-iterative 21 13 1)
(fibonacci-iterative 34 21 0)


