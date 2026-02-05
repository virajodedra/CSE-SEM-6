:'
    To convert Number to Words (1-5) Using Switch Case
'  #!/bin/bash

echo "Enter a number (1-5):"
read n

case "$n" in
    1) echo "One" ;;
    2) echo "Two" ;;
    3) echo "Three" ;;
    4) echo "Four" ;;
    5) echo "Five" ;;
    *) echo "Invalid number" ;;
esac
 