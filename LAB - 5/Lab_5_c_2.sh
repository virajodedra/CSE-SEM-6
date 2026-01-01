#!/bin/bash

read -p "Enter first number: " num1
read -p "Enter second number: " num2

if [ $num1 -eq $num2 ]
then
    echo "Both numbers are EQUAL"
fi

if [ $num1 -ne $num2 ]
then
    echo "Both numbers are NOT EQUAL"
fi

