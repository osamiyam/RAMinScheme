
# RAMinScheme

## Overview

名城大学大学院情報工学研究科の授業「アルゴリズム特論」で解説したRAMの
プログラムを実際に実行させるためのインタプリタです。以前、Javaで書かれ
たものを長らく利用していましたが、Javaの環境は少々利用しづらくなってき
ましたので、新たにSchemeで書きました。SchemeはRacketのR5RSモードを利用
しています。コンパイラでバイナリが生成できますので、それぞれの環境で普
通に利用することができます。

## Requirements

Racketがインストールできる環境であれば普通に動くと思います。利用している
Racketのバージョンは8.15です。

## Usage

コンパイルされたバイナリを`RAM`として、RAMで書かれたプログラムを記述した
ファイルが`Examples/prog.scm`であるとすれば、
```
% ./RAM < Examples/prog.scm
```
のようにして実行します。RAMのプログラムは、
```
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Title: Using an array in a RAM program
;; Author: Osami Yamamoto
;; Date: Fri Apr 10 12:19:18 JST 2009
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
```
のようにスキームの一つのS式として記述します。SJ命令もおそらく問題なく
使えると思います。

