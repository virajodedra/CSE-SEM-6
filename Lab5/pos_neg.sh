#!/bin/bash

echo "Enter a number:"
read n

if [ $n -ge 0 ]; then
    echo "Positive number"
else
    echo "Negative number"
fi

