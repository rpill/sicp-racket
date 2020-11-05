#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum-of-squares x y) 
         (+ (square x) (square y)))

(define (min x y)
         (if (< x y)
               x
               y))

(define (max x y)
         (if (> x y)
               x
               y))

(define (sum-of-squares-two-greatest-of-three x y z) 
         (sum-of-squares (max x y)
                        (max (min x y) z)))

(check-equal? (square 3) 9)
(check-equal? (sum-of-squares 3 4) 25)
(check-equal? (max 3 4) 4)
(check-equal? (min 3 4) 3)
(check-equal? (sum-of-squares-two-greatest-of-three 3 4 5) 41)