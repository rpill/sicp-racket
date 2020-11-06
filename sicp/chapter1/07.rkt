#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (average x y) 
      (/ (+ x y) 2))

(define (improve guess x)
      (average guess (/ x guess)))

(define (good-enough? guess x)
      (< (abs (- guess x)) 0.0001))

(define (sqrt-iter guess prev-guess x)
      (if (good-enough? guess prev-guess)
            guess
            (sqrt-iter (improve guess x) guess x)))

(define (sqrt x)
      (sqrt-iter 1 0.5 x))

(check-equal? (square 3) 9)
(check-equal? (average 3.0 4.0) 3.5)
(check-equal? (good-enough? 9.00001 9) #t)
(check-= (sqrt 36) 6 0.0001)
