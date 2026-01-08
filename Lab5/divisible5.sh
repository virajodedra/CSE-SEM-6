#!/bin/bash

echo "Enter a number:"
read n

if [ $((n % 5)) -eq 0 ]; then
    echo "Divisible by 5"
else
    echo "Not divisible by 5"
fi

