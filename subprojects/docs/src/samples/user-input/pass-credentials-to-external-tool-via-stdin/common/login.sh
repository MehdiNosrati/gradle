#!/bin/bash

echo Enter userame:
read username
echo Enter password:
if [ -t 0 ] ; then # if connected to a terminal, do not echo the password input
    stty -echo
    read password
    stty echo
    echo
else
    read password
fi

if [ "$username" = "secret-user" ] && [ "$password" = "secret-password" ] ; then
    echo "Welcome, $username!"
elif [ "$username" = "secret-properties-user" ] && [ "$password" = "secret-properties-password" ] ; then
    echo "Welcome, $username!"
else
    echo "Bad credentials!"
    exit 1
fi
