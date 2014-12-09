#!/bin/sh
echoArray(){
	resultStr=""
	echo "echoArray"

	#配列の宣言　スペースで区切る
	array=(1 2 3 4 5 6 "hoge7")

	#添字で配列にアクセス
	echo "添字で配列にアクセス"
	echo ${array[0]}

	#@で配列の全要素にアクセス
	echo "@で配列の全要素にアクセス"
	echo ${array[@]}

	#for文で配列にアクセス
	for val in "${array[@]}"
	do
		#echo "$val"
		resultStr="$resultStr/$val"
	done

	echo "配列の全要素を文字列として結合"
	echo $resultStr
}

echoArray
