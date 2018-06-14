#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT (){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#TEST1   #1以下の数字についてチェック

array=[-5 -4 -3 -2 -1 0 1]

for ((i=0; i<${#array[@]}; i++)); do
  echo "$array[i] is not natural number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST2  #素数についてチェック

array=["2" "3" "5" "7" "11" "13" "17" "19"]  

for ((i=0; i<${#array[@]}; i++)); do
  echo "$array[i] is natural number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST3  #2以上の素数以外の数についてチェック

array=["4" "6" "8" "9" "10" "12" "14"]

for ((i=0; i<${#array[@]}; i++)); do
  echo "$array[i] not natural number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done


echo OK
