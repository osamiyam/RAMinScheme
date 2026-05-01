;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; title: using an array in a ram program
;; author: osami yamamoto
;; date: fri apr 10 12:19:18 jst 2009
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(
	(load =10)
	(store 1)
loop:
	(load 1)
	(store *1)
	(load 1)
	(add =1)
	(store 1)
	(sub =20)
	(jzero skip)
	(jump loop)
skip:
	(write 11)
	(halt)
)	


	
	
