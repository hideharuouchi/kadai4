#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT (){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#TEST1   #1以下の数字についてチェック

for ((i=-5; i<2; i++)) do
  echo "$i is not prime number" > $tmp-ans
  ./kadai3.sh $i > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST2  #素数についてチェック

declare -a array = () 
declare -a array = ("2" "3" "5" "7" "11" "13" "17" "19")  

for ((i=0; i<8; i++)) do
  echo "$array[i] is prime number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST3  #2以上の素数以外の数についてチェック

declare -a array = () 
declare -a array = ("4" "6" "8" "9" "10" "12" "14")

for ((i=0; i<7; i++)) do
  echo "$array[i] not prime number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done


echo OK
