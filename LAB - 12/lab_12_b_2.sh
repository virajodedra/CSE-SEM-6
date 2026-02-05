:'
    To checks whether a given user is valid or not.
'
#!/bin/bash

echo "Enter username:"
read user

if id "$user" >/dev/null 2>&1
then
    echo "Valid user"
else
    echo "Invalid user"
fi

