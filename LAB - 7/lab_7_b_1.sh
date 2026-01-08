#!/bin/bash
: '
    To enter basic salary of an employee and calculate Gross salary according to given conditions Basic
Salary >= 10000 : DA = 80% of basic salary, HRA = 20% of basic salary + DA Basic Salary >= 20000 :
DA = 90% of basic salary, HRA = 25% of basic salary + DA Basic Salary >= 30000 : DA = 95% of basic
salary, HRA = 30% of basic salary + DA.

'

echo "Enter Basic Salary:"
read basic

if [ $basic -ge 30000 ]
then
    da=$((basic * 95 / 100))
    hra=$((basic * 30 / 100))
else
    if [ $basic -ge 20000 ]
    then
        da=$((basic * 90 / 100))
        hra=$((basic * 25 / 100))
    else
        if [ $basic -ge 10000 ]
        then
            da=$((basic * 80 / 100))
            hra=$((basic * 20 / 100))
        else
            da=0
            hra=0
        fi
    fi
fi

gross=$((basic + da + hra))

echo "DA = $da"
echo "HRA = $hra"
echo "Gross Salary = $gross"
