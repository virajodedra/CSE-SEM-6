:'
    1. Which will print the following menu and execute the given task?
        • Display calendar of current month
        • Display todays date and time
        • Display usernames that are currently logged in the system
        • Display your name at given x, y position
        • Display your terminal number
        • Exit
'

#!/bin/bash

echo "1 to  - Display calendar of current month"
echo "2to  - Display today's date and time"
echo "3 to  -  Display logged in users"
echo "4 to  -  Display name at x,y position"
echo "5 to  -  Display terminal number"
echo "6 to  -  Exit"
echo "Enter your choice :   "
read choice

case "$choice" in
    1)
        cal
        ;;
    2)
        date
        ;;
    3)
        who
        ;;
    4)  
        echo " Enter Your Name - "
        read name
        echo "Enter The x position:"
        read x
        echo "Enter The y position:"
        read y
        tput cup $x $y
        echo $name
        
        ;;
    5)
        tty
        ;;
    6)
        exit
        ;;
    *)
        echo "Invalid choice"
        ;;
esac
