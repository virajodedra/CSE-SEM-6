:'

    lab - 5 part - a - 2
    

    
'

#!/bin/bash

read -p " Enter the first number : " num1
read -p " Enter the second number :" num2

if [ $num1 -gt $num2 ] then
    echo " The largest number is : $num1 "
fi

if [ $num2 -gt $num1 ] then
    echo " The largest number is : $num2 "
fi

if [ $num1 -eq $num2 ] then
    echo " Both numbers are equal : $num1 "
fi
