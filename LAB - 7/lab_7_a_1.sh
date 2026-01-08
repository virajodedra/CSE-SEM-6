#!/bin/bash
: '
    Q1. To check given year is Leap year or not using nested if
   '

echo "Enter the Year you want to check whether it is leap or Non-leap Year :"
read year

if [ $((year % 4)) -eq 0 ]
then
    if [ $((year % 100)) -eq 0 ]
    then
        if [ $((year % 400)) -eq 0 ]
        then
            echo "Leap Year"
        else
            echo "Not a Leap Year"
        fi
    else
        echo "Leap Year"
    fi
else
    echo "Not a Leap Year"
fi
