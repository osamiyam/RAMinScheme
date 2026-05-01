;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Test Program
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   ((read 1)  ; input the data
    (load 1)

    (jgtz pos)
    (write =0)
    (jump endif)
  pos:
    (load 1)
    (store 2)
    (load 1)
    (sub =1)
    (store 3)
  while:
    (load 3)
    (jgtz continue)
    (jump endwhile)
  continue:
    (load 2)
    (mult 1)
    (store 2)
    (load 3)
    (sub =1)
    (store 3)
    (jump while)
  endwhile:
    (write 2)
  endif:
    (halt))

5

