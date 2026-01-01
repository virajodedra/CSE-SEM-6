:'
PART - B :-

Write a Shell Script:
1. To check whether given no is NEGATIVE or POSITIVE.

'

#!bin/bash
echo " Enter THe number : "
read num

if [ $num -gt 0 ]
then
    echo "The Given Number $num is POSITIVE."
fi

if [ $num -lt 0 ] 
then
    echo " The Given Number $num is NEGATIVE. "
fi
if [ $num -eq 0 ]
then
    echo "The number is ZERO"
fi

