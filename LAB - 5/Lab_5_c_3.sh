#!/bin/bash

read -p "Enter side 1: " a
read -p "Enter side 2: " b
read -p "Enter side 3: " c

if [ $((a + b)) -gt $c ] && [ $((a + c)) -gt $b ] && [ $((b + c)) -gt $a ]
then
    echo "Triangle is VALID"
fi

if [ $((a + b)) -le $c ] || [ $((a + c)) -le $b ] || [ $((b + c)) -le $a ]
then
    echo "Triangle is NOT VALID"
fi

