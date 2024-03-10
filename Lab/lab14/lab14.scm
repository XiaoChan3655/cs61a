(define (split-at lst n)
  (if (= n 0) (cons nil lst)
    (cons (cons (car lst) (car (split-at (cdr lst) (- n 1))))  (cdr (split-at (cdr lst) (- n 1))))
  )
)


(define (compose-all funcs)
  (if (null? funcs) (lambda (x) x)
    (lambda (x) ((compose-all (cdr funcs)) ((car funcs) x)))
  )
)

