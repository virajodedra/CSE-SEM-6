:'
    perform basic mathematical based on choice Using Switch Case.
'

#!/bin/bash

echo "1 -  Addition"
echo "2 - Subtraction"
echo "3 - Multiplication"
echo "4 - DivisIon"

echo "Enter your Operation Choice :"
read ch

echo "Enter two numbers space seperatedly :"
read a b

case "$ch" in
    1)
        echo "Result = $((a + b))"
        ;;
    2)
        echo "Result = $((a - b))"
        ;;
    3)
        echo "Result = $((a * b))"
        ;;
    4)
        echo "Result = $((a / b))"
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
