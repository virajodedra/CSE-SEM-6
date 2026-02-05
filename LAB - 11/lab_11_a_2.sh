:'
    To read gender (M/F) and print corresponding gender using switch.
'

#!/bin/bash

echo " Enter the Gender (M/F) "
read gender

case "$gender" in   
    M)
        echo " Male "
        ;;

    F)
        echo "Female"
        ;;

    *) 
        echo " Invalid Gender "
        ;;
        
esac