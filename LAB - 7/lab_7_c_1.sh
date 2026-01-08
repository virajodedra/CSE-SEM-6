#!/bin/bash
: '
Q1. Write a shell script to accept two integers and check
whether they are equal or not.
If not equal, find the largest number.
'

echo "Enter first number:"
read a

echo "Enter second number:"
read b

if [ $a -eq $b ]
then
    echo "Both numbers are equal"
else
    if [ $a -gt $b ]
    then
        echo "Largest number is $a"
    else
        echo "Largest number is $b"
    fi
fi
