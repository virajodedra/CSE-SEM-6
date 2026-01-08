#!bin/bash

: '
    To find a largest number from 3 numbers.
'

echo " Enter the number - 1 : "
read num1

echo " Enter the number - 2 : "
read num2

echo " Enter the number - 3 : "
read num3

if[ $a -ge $b ]
then
    if[ $a -ge $c ]
    then 
        echo " The Largets Number among $a, $b, $c is : $a"
    else
    then
        echo " The Largets Number among $a, $b, $c is : $c"
else
    if[$b -ge $c]
    then
        echo " The Largets Number among $a, $b, $c is : $b"
    else
    then
        echo " The Largets Number among $a, $b, $c is : $c"