#!/bin/sh


ERROR_EXIT (){

#TEST1-1:
echo "5 is natural number" > /tmp/$$-ans
./kadai3.sh 5 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"

#TEST1-2:
echo "10 is not natural number" > /tmp/$$-ans
./kadai3.sh 10 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"

#TEST1-3:
echo "-2 is not natural number" > /tmp/$$-ans
./kadai3.sh -2 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"

#TEST1-4:
echo "13 is natural number" > /tmp/$$-ans
./kadai3.sh 13 > /tmp/$$-out || ERROR_EXIT "exe chigau"
diff /tmp/$$-ans /tmp/$$-out || ERROR_EXIT "diff chigau"


echo OK
