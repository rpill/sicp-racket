#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (improve guess x)
      (/ (+ (/ x 
                  (square guess)) 
            (* 2 guess)) 
      3))

(define (good-enough? guess x)
      (< (abs (- guess x)) 0.0001))

(define (cbrt-iter guess prev-guess x)
      (if (good-enough? guess prev-guess)
            guess
            (cbrt-iter (improve guess x) guess x)))

(define (cbrt x)
      (cbrt-iter 1 0.5 x))

(check-equal? (square 3) 9)
(check-equal? (good-enough? 9.00001 9) #t)
(check-= (cbrt 70) 4.12128 0.0001)