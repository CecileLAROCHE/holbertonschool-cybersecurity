#!/bin/bash
awk -F: '($3 >= 1000) {print $1}' "$1"  | while read user

do 
if id "$user" | grep -q disk
then
    echo "$user:disk"
fi

if id "$user" | grep -q docker
then
    echo "$user:docker"
fi

if id "$user" | grep -q shadow
then
    echo "$user:shadow"
fi

done
