#!/bin/bash
: '
Q2. Write a shell script to check if a number is positive, negative,
or zero and check even or odd if positive.

'

echo "Enter a number:"
read num

if [ $num -gt 0 ]
then
    echo "Number is Positive"

    if [ $((num % 2)) -eq 0 ]
    then
        echo "Number is Even"
    else
        echo "Number is Odd"
    fi

else
    if [ $num -lt 0 ]
    then
        echo "Number is Negative"
    else
        echo "Number is Zero"
    fi
fi
