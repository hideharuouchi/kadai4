#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT (){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}

#TEST1   #1以下の数字についてチェック

#declare -a array = () 
declare -a array = '([0]="-4" [1]="-3" [2]="-2" [3]="-1" [4]="0" [5]="1")'  

for ((i=0; i<6; i++)) do
  echo "$array[i] is not prime number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST2  #素数についてチェック

#declare -a array = () 
declare -a array = '([0]="2" [1]="3" [2]="5" [3]="7" [4]="11" [5]="13" [6]="17" [7]="19")'  

for ((i=0; i<8; i++)) do
  echo "$array[i] is prime number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done

TEST3  #2以上の素数以外の数についてチェック

#declare -a array = () 
declare -a array = '([0]="4" [1]="6" [2]="8" [3]="9" [4]="10" [5]="12" [6]="14")'

for ((i=0; i<7; i++)) do
  echo "$array[i] not prime number" > $tmp-ans
  ./kadai3.sh $array[i] > $tmp-out || ERROR_EXIT "exe chigau"
  diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"
done


echo OK
