:'
    Check whether a character is VOWEL or CONSONANT using switch.
'


#!/bin/bash
echo  " Enter the Character : " 
read ch

case "$ch" in\

    a | e | i | o | u | A | E | I | O | U )
                                                echo " The Character is vowel . "
                                                ;;
    
    *)
        echo " Consonent "
        ;;
esac