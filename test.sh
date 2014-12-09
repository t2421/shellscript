#!/bin/sh
echoString(){
	#$# で引数の個数を取得
	echo "parameter length $#"

	#$1....$9 でパラメータにアクセスできる
	echo "parameter1 $1"
	echo "parameter2 $2"

}

#このシェルスクリプトが呼び出されるときに引数を２つ受け取る
echoString $1 $2
