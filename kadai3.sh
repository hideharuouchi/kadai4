#!/bin/bash

a=$1

if [ $a -le 1 ]; then
 echo "$a is not prime number"

 else

  flag=0

  for ((i=2; i<=$(($a / 2)); i++)) do
    if [ $(($a % $i)) -eq 0 ]; then
    flag=1
    break
    fi
  done

  if [ $flag -eq 0 ]; then
    echo "$a is prime number"
    else 
     echo "$a is not prime number"
  fi

fi
