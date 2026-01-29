:'
    To display the multiplication table of the given number.
'

#!/bin/bash
echo "Enter number:"
read n

num=1
while [ $num -le 10 ]
do
  echo "$n x $num = $((n*num))"
  
  num=$((num+1))      
done       