:'
    To print 1 to n numbers
'

#!/bin/bash
echo "Enter n:"
read n

temp=1
while [ $temp -le $n ]
do
  echo $temp
  temp=$((temp+1))
done
