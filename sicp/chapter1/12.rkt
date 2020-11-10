#lang sicp

(#%require rackunit)

(define (pascal-triangle-element i j)
  (cond ((= j 1) 1)
        ((= i j) 1)
        ((< i j) '())
        (else (+ (pascal-triangle-element (- i 1) (- j 1))
                 (pascal-triangle-element (- i 1) j)))))

(check-equal? (pascal-triangle-element 5 3) 6)
(check-equal? (pascal-triangle-element 4 3) 3)
(check-equal? (pascal-triangle-element 1 1) 1)