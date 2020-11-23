#lang sicp

(#%require rackunit)

(define (square x) (* x x))

(define (sum_of_squares first second) 
    (+  (square first)
        (square second))
)

(define (sum_of_squares_of_big a b c)
    (sum_of_squares (max a b c) 
                    (max (min a b) (min a c) (min b c))
    )
)

(check-equal? (sum_of_squares_of_big 4 4 2) 32)