#lang sicp
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x 0))))

;(abs 5)  ;; 5
;(abs 0)  ;; 0
;(abs -5) ;;-5

;; Shorter version
(define (abs-two x)
  (cond ((< x 0) (- x 0))
        (else x)))

;(abs-two 2)
;(abs-two -2)

;; Alternative
(define (abs-three x)
  (if (< x 0) (- x 0)
      x))

;(abs-three 1)
;(abs-three -1)


;; Logical Composition Operators
(define (positive-and-smaller-than-five? x)
  (and (> x 0)
       (< x 5)))

;(positive-and-smaller-than-five? 3)

(define (one-or-three? x)
  (or (= x 1)
      (= x 3)))

;(one-or-three? 3)

(define (not-even? x)
  (not (even? x)))

;(not-even? 5)

;; and & or are considered special forms, not procedures, because the subexpressions are not necessarily all evaluated.
;; not is an ordinary procedure