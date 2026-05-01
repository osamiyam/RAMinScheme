;;;;;;;;;;;
;; Test5 ;;
;;;;;;;;;;;

((load =0)
 (store 1)
 loop:
 (load 1)
 (mult 1)
 (write 0)
 (load 1)
 (add =1)
 (store 1)
 (sub =20)
 (jzero skip)
 (jump loop)
 skip:
 (halt)))
