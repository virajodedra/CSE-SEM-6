#!/bin/bash
echo "Enter n:"
read n

temp=1
sum=0

while [ $temp -le $n ]
do
  sum=$((sum+temp))
  temp=$((temp+1))
done

avg=$((sum/n))
echo "Total Sum Is : $sum"
echo "The Average IS : $avg"
