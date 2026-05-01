(define myprog
  '(
    (load =0)
    (store 2)
    (load =10)
    (store 3)
    ; (read 3)
  loop:
    (load 2)
    (write 2)
    (add =1)
    (store 2)
    (load 3)
    (sub 2)
    (jgtz loop)
    (halt)
    ))
