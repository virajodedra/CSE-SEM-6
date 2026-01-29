:'
    To print sum of series 1 + 4 + 9 + 16 + 25 + 36 + ...n
'


#!/bin/bash
echo "Enter n:"
read n

sum=0
for ((i=1; i<=n; i++))
do
  sum=$((sum + i*i))
done

echo "Sum = $sum"
