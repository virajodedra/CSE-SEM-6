:'
    To display the date, time, and a welcome message (like Good Morning etc.). The time should be
        displayed with “a.m.” or “p.m.” and not in 24 hours notation.
'

#!/bin/bash

hour=$(date +"%I")
ampm=$(date +"%p")
time=$(date +"%I:%M %p")
date_today=$(date +"%d-%m-%Y")

if [ "$hour" -lt 12 ]
then
    msg="Good Morning"
elif [ "$hour" -lt 17 ]
then
    msg="Good Afternoon"
else
    msg="Good Evening"
fi

echo "Date: $date_today"
echo "Time: $time"
echo "$msg"
