#lang racket

(provide hello)

(define (hello [arg "World"])
  (string-append "Hello, " arg "!"))
