#lang sicp

(#%require rackunit)

(define (f n) 
  (if (< n 3) 
      n
      (+ (f (- n 1))
          (f (- n 2))
          (f (- n 3)))))


(define (f-iterative n)
  (f-iter 2 1 0 n))

(define (f-iter product a b count)
  (if (= count 0)
      b
      (f-iter (+ product a b) product a (- count 1))))

(check-equal? (f 3) 3)
(check-equal? (f 7) 37)
(check-equal? (f-iterative 2) 2)
(check-equal? (f-iterative 10) 230)
(check-equal? (f 11) (f-iterative 11))