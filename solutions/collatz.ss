(define (collatz1 n my-even my-odd)
    (cond
        [(eqv? n 0) "0 is not allowed"]
        [(eqv? n 1) (begin
            (display "============")
            (newline)
            (display "statistics: ")
            (newline)
            (display "/2: ")
            (display my-even)
            (newline)
            (display "*3+1: ")
            (display my-odd)
            (newline)
            (display "ratio: ")
            (display (/ my-even (+ my-odd 0.0)))
            (newline)
            (display "============"))]
        [(even? n) (begin
            (display (/ n 2))
            (display " :/2")
            (newline)
            (collatz1 (/ n 2) (+ my-even 1) my-odd))]
        [(odd? n) (begin
            (display (+ 1 (* n 3)))
            (display " :*3+1")
            (newline)
            (collatz1 (+ 1 (* n 3)) my-even (+ my-odd 1)))]))

(define (collatz n) (collatz1 n 0 0))

(define (collatz-ratio1 n my-even my-odd)
    (cond
        [(eqv? n 0) "0 is not allowed"]
        [(eqv? n 1) (/ my-even (+ my-odd 0.0))]
        [(even? n) (collatz-ratio1 (/ n 2) (+ my-even 1) my-odd)]
        [(odd? n) (collatz-ratio1 (+ 1 (* n 3)) my-even (+ my-odd 1))]))

(define (collatz-ratio n) (collatz-ratio1 n 0 0))
