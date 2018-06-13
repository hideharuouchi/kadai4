#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT (){
  echo "$1" >&2
  rm -f $tmp-*
  exit 1


#TEST1-1:
echo "-1 is not natural number" > $tmp-ans
./kadai3.sh -1 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-2:
echo "0 is not natural number" > $tmp-ans
./kadai3.sh 0 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-3:
echo "1 is not natural number" > $tmp-ans
./kadai3.sh 1 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-4:
echo "2 is natural number" > $tmp-ans
./kadai3.sh 2 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-5:
echo "3 is natural number" > $tmp-ans
./kadai3.sh 3 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-6:
echo "4 is not natural number" > $tmp-ans
./kadai3.sh 4 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-7:
echo "5 is natural number" > $tmp-ans
./kadai3.sh 5 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-8:
echo "6 is not natural number" > $tmp-ans
./kadai3.sh 6 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-9:
echo "7 is natural number" > $tmp-ans
./kadai3.sh 7 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-10:
echo "8 is not natural number" > $tmp-ans
./kadai3.sh 8 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-11:
echo "9 is not natural number" > $tmp-ans
./kadai3.sh 9 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-12:
echo "10 is not natural number" > $tmp-ans
./kadai3.sh 10 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-13:
echo "11 is natural number" > $tmp-ans
./kadai3.sh 11 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-14:
echo "12 is not natural number" > $tmp-ans
./kadai3.sh 12 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"

#TEST1-15:
echo "13 is natural number" > $tmp-ans
./kadai3.sh 13 > $tmp-out || ERROR_EXIT "exe chigau"
diff $tmp-ans $tmp-out || ERROR_EXIT "diff chigau"


echo OK
