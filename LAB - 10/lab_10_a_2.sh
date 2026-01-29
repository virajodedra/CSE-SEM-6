:'
    To check whether a given number is prime or not.
'

#!/bin/bash
echo "Enter number:"
read n

flag=0
for ((i=2; i<=n/2; i++))
do
  if [ $((n%i)) -eq 0 ]
  then
    flag=1
    break
  fi
done

if [ $flag -eq 0 ]
then
  echo "$num is Prime number"
else
  echo "$num is Not a prime number"
fi
