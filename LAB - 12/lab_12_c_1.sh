:'
    To display all executable files, directories and zero sized files from current directory.
'

#!/bin/bash

echo "Directories:"
find . -maxdepth 1 -type d

echo "Executable files:"
find . -maxdepth 1 -type f -executable

echo "Zero sized files:"
find . -maxdepth 1 -type f -size 0
