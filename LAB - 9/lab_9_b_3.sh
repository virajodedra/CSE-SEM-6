:'
    To check whether a given number is palindrome or not.
'

#!/bin/bash
echo " Enter the number : "
read num

temp=$num
isPalindrome=true
reverse_num=0

while [ $num -le 0 ]
do
    rem=$((num%10))
    reverse_num=$((reverse_num*10+rem))
    num=$((num/10))

done    
  
if [ $temp -eq $reverse_num ]
then   
    echo " The Number : $temp is not Palindrome Number. "
else    
    echo " The Number : $temp is  Palindrome Number. "
fi   