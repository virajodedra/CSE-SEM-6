:'
    To find the value of one number raised to the power of another.
'

#!/bin/bash

echo "Enter the base number:"
read base

echo "Enter the power number:"
read power

res=1
for ((i=1; i<=power; i++))
do
    res=$((res * base))
done

echo "The $power power of $base is = $res"
