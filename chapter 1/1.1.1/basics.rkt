#lang sicp
(+ (+ 728 1) 2)
;; operand:  +
;; operands: (+ 728 1), 2
;; arguments: 729, 2

;; the convention of placing the operand to the left is known as prefix notation
(+ 0 1)

;; pretty-printing - long combinations are written so that operands are vertically aligned
(+ (* 3 (+ (* 2 4) (+ 3 5))) (+ (- 10 7) 6))
;; pretty-printed:
(+ (* 3
      (+ (* 2 4)
         (+ 3 5)))
   (+ (- 10 7)
      6))

;; Even complex expressions are read, evaluated and printed.
;; This mode of operation is called the read-eval-print loop (REPL).

;; Defining variables in Scheme
(define pi 3.14159)
(define radius 10)
(* pi (* radius radius))

(define circumference (* 2 pi radius))
circumference

;; compound procedure - a user defined function
;; procedure definition - action of creating a user function
(define (square x) (* x x))
(square 5)

;; general form of procedure definition
;; (define (name) (formal parameters) (body))
