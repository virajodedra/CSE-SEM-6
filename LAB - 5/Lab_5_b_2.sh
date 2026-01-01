:'

To check whether given no is divisible by 5 or not.

'

#!bin/bash


echo "Enter the number:"
read num

if [ $((num % 5)) -eq 0 ]
then
    echo "The given number is DIVISIBLE by 5"
fi

if [ $((num % 5)) -ne 0 ]
then
    echo "The given number is NOT divisible by 5"
fi

