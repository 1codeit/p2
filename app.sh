#!/bin/bash

attempts=0

while [ $attempts -lt 3 ]
do
    read -p "Username: " username
    read -s -p "Password: " password
    echo

    if [ "$username" == "admin" ] && [ "$password" == "secret" ]
    then
        echo "Access granted"
        break
    else
        echo "Access denied. Try again."
        ((attempts++))
    fi
done

if [ $attempts -ge 3 ]
then
    echo "Maximum number of attempts reached."
fi
