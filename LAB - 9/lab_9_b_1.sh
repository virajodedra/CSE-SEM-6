:'
    To print numbers between two given numbers which is divisible by 2 but not divisible by 3
'

#!/bin/bash
echo "Enter first number:"
read start
echo "Enter second number:"
read end

num=$start
while [ $num -le $end ]
do
  if [ $((num%2)) -eq 0 ] && [ $((num%3)) -ne 0 ]
  then
    echo $num
  fi
  num=$((num+1))
done