#!/bin/bash

## libpam-pwquality($1)
## /etc/pam.d/common-password($2)

if dpkg -s "$1" > /dev/null 2>&1
then 
    echo "libpam-pwquality déjà installer"
else
    apt install -y "$1"
fi

if grep -q "pam_pwquality.so" "$2"
then
    echo "ligne exite"
    sed -i -E 's/.*pam_pwquality.so.*/password requisite pam_pwquality.so retry=3 minlen=12 minclass=3/' "$2"
else
    echo "password requisite pam_pwquality.so minlen=12 minclass=3" >> "$2"
fi
