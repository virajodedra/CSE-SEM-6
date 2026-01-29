:'
    To find factorial of given number n.
'

#!/bin/bash

echo "Enter the number : "
read input

num=1
counter=1

while [ $counter -le $input ]
do
    num=$((num*counter))
    counter=$((counter+1))
done

echo " The Factorial is : $num "
