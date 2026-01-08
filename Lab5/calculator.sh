#!/bin/bash

echo "Enter first number:"
read a
echo "Enter second number:"
read b

echo "Choose operation (+ - * /):"
read op

if [ "$op" = "+" ]; then
    echo "$((a + b))"
elif [ "$op" = "-" ]; then
    echo  "$((a - b))"
elif [ "$op" = "*" ]; then
    echo  "$((a * b))"
elif [ "$op" = "/" ]; then
    echo  $((a / b))"
else
    echo "Invalid operation"
fi

