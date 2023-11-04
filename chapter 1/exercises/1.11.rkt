#lang sicp

(define (f-rec n)
  (if (< n 3)
      n
      (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3))))))


;; Substituion Model
(f-rec 5)
(+ (f-rec 4) (* 2 (f-rec 3)) (* 3 2))
(+ (f-rec 3) (* 2 (f-rec 2)) (* 3 (f-rec 1)) (* 2 (+ (f-rec 2) (* 2 (f-rec 1)) (* 3 (f-rec 0)))) (* 3 2))
(+ (f-rec 2) (* 2 (f-rec 1)) (* 3 (f-rec 0)) (* 2 (f-rec 2)) (* 3 (f-rec 1)) (* 2 (+ (f-rec 2) (* 2 (f-rec 1)) (* 3 (f-rec 0)))) (* 3 2))
(+ 2 (* 2 1) (* 3 0) (* 2 2) (* 3 1) (* 2 (+ 2 2 0)) 6)
(+ 2 2 0 4 3 (* 2 4) 6)
(+ 4 4 3 8 6)
(+ 8 11 6)
25

(define (f-iter n)
  (f-iterative 0 1 2 n))

(define (f-iterative a b c count)
  (if (zero? count)
      a
      (f-iterative b
                   c
                   (+ c (* 2 b) (* 3 a))
                   (- count 1))))

;; Substituion Model
(f-iter 5)
(f-iterative 0 1 2 5)
(f-iterative 1 2 4 4)
(f-iterative 2 4 11 3)
(f-iterative 4 11 25 2)
(f-iterative 11 25 59 1)
(f-iterative 25 59 143 0)
25