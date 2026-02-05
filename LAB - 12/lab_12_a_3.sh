:'
    To validate the entered date. (E.g. Date format is: dd-mm-yyyy)
'

#!/bin/bash

echo "Enter date (dd-mm-yyyy):"
read date

if echo "$date" | grep -E "^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-[0-9]{4}$" >/dev/null
then
    echo "Valid date format."
else
    echo "Invalid date format Given."
fi
