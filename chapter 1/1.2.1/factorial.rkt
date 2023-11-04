#lang sicp
(define (factorial n)
  (if (= n 1)
      1
      (* n (factorial (- n 1)))))

(factorial 5)

;; Substitution Model
(factorial 5)
(* 5 (factorial 4))
(* 5 (* 4 (factorial 3)))
(* 5 (* 4 (* 3 (factorial 2))))
(* 5 (* 4 (* 3 (* 2 (factorial 1)))))
(* 5 (* 4 (* 3 (* 2 1))))
(* 5 (* 4 (* 3 2)))
(* 5 (* 4 6))
(* 5 24)

(define (factorial-iterative n)
  (fact-iterative 1 1 n))

(define (fact-iterative product counter max-count)
  (if (> counter max-count)
      product
      (fact-iterative (* counter product)
                      (+ counter 1)
                      max-count)))

"---"
(factorial-iterative 5)

;; Substitution Model
(fact-iterative 1 1 5)
(fact-iterative 1 2 5)
(fact-iterative 2 3 5)
(fact-iterative 6 4 5)
(fact-iterative 24 5 5)
(fact-iterative 120 6 5)