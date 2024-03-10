(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond ((> 0 num) -1) ((= 0 num) 0) (else 1))
)


(define (square x) (* x x))

(define (pow x y)
(if (= 0 y)  1
(if (even? y)
   (square (pow x (quotient y 2)))
 (* x (square (pow x (quotient (- y 1) 2))))
)
)
)

