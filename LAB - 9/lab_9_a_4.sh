:'
    To print odd numbers between 1 to n
'

#!/bin/bash
echo "Enter n:"
read n

counter=1
while [ $counter -le $n ]        
do        
  if [ $((counter%2)) -ne 0 ]        
  then         
    echo $counter       
  fi          
  counter=$((counter+1))   
done   
