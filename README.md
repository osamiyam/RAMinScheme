
# RAMinScheme

## Overview

名城大学情報工学研究科の授業「アルゴリズム特論」で解説したRAMのプログラムを実際に実行させる
ためのインタプリタです。
以前、Javaで書かれたものを長らく利用していましたが、Javaの環境は少々利用しづらくなって
きましたので、新たにSchemeで書きました。SchemeはRacketのR5RSモードを利用しています。
コンパイラでバイナリが生成できますので、それぞれの環境で普通に利用することができます。

## Requirements

Racketがインストールできる環境であれば普通に動くと思います。

## Usage

コンパイルされたバイナリをRAMとして、RAMで書かれたプログラムを記述したファイルが
Examples/prog.scmであるとすれば、
```
% ./RAM < Examples/prog.scm
```
のようにして実行します。RAMのプログラムは、
```
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
```
のようにスキームの一つのS式として記述します。
