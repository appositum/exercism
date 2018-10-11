#lang racket

(provide collatz)

(define (collatz n)
  (if (and (exact-integer? n) (positive? n))
    (aux 0 n)
    (error "number must be a positive integer")
  )
)

(define/match (aux acc n)
  [(acc 1) acc]
  [(acc n)
   (if (even? n)
     (aux (+ acc 1) (/ n 2))
     (aux (+ acc 1) (+ (* 3 n) 1))
  )]
)
