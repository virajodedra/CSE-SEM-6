:'
    To check whether number is EVEN or ODD using switch.
'

#!/bin/bash

echo "Enter a number:"
read n

case $((n % 2)) in
    0)
        echo "Even"
        ;;
    1)
        echo "Odd"
        ;;
esac
