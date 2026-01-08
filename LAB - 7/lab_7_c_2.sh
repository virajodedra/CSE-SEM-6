#!/bin/bash
: '
Q2. Write a shell script to check the type of triangle based on sides.
'

echo "Enter side 1:"
read a
echo "Enter side 2:"
read b
echo "Enter side 3:"
read c

# Check for valid triangle
if [ $((a + b)) -gt $c ] && [ $((a + c)) -gt $b ] && [ $((b + c)) -gt $a ]
then
    if [ $a -eq $b ] && [ $b -eq $c ]
    then
        echo "Triangle is Equilateral"
    else
        if [ $a -eq $b ] || [ $b -eq $c ] || [ $a -eq $c ]
        then
            echo "Triangle is Isosceles"
        else
            echo "Triangle is Scalene"
        fi
    fi
else
    echo "Not a Valid Triangle"
fi
