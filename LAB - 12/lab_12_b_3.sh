:'
    To finds total no. of users and find out how many of them are currently logged in.

'

#!/bin/bash

total_users=$(cut -d: -f1 /etc/passwd | wc -l)
logged_users=$(who | wc -l)

echo "Total users: $total_users"
echo "Logged in users: $logged_users"
