#!/bin/bash

echo "Choose any of below operation :-"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

echo -n "Enter your choice: " 
read choice

echo -n "Enter first number: " 
read a

echo -n "Enter second number: " 
read b

if [ $choice -eq 1 ]; then
    result=$((a + b))
    echo "Addition = $result"

elif [ $choice -eq 2 ]; then
    result=$((a - b))
    echo "Subtraction = $result"

elif [ $choice -eq 3 ]; then
    result=$((a * b))
    echo "Multiplication = $result"

elif [ $choice -eq 4 ]; then
    if [ $b -eq 0 ]; then
        echo "Can not divide by ZERO(0)"
    else
        result=$((a / b))
        echo "Division = $result"
    fi

else
    echo "Invalid choice"
fi

