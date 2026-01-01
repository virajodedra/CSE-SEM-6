:'
    To check whether person is eligible to vote. (age>18)
'

#!/bin/bash

read -p "Enter your age: " age

if [ $age -gt 18 ]
then
    echo "You are eligible to vote"
fi
if [ $age -lt 18 ]
    echo "You are NOT eligible to vote"
fi
