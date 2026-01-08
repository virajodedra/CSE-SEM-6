#!/bin/bash
: '
    Write a shell script to generate mark sheet of a student. Take 3 subjects, calculate, and display
    total marks, percentage and Class obtained by the student.
'


echo " Enter the marks of the sub - 1 :"
read mark1 

echo " Enter the marks of the sub - 2 :"
read mark2

echo " Enter the marks of the sub - 3 :"
read mark3 

echo " Enter Total Marks of the all 3  papers :"
read max_marks


total_marks=$((mark1+mark2+mark3))

echo " Total marks = $total_marks "

# percentage=$((total_marks/3))
per=$(echo "scale=2; ($total_marks/$max_marks)*100"|bc)
echo " Percentage = $per%"

if [ $(echo "$per>=90" | bc) -eq 1 ]
then
    echo "Class Obtained: First Class"
else
    if [ $(echo "$per>=70" | bc) -eq 1 ]
    then
        echo "Class Obtained: Second Class"
    else
        if [ $(echo "$per>=50" | bc) -eq 1 ]
        then
            echo "Class Obtained: Pass Class"
        else
            echo "Class Obtained: Fail"
        fi  
    fi
fi