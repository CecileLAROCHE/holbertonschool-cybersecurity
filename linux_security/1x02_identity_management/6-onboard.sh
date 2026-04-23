#!/bin/bash

## $1 - Username to create
## $2 - SSH public key string 
## ./6-onboard.sh new-user "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIG7Ykz3x6mKkKk9yV8pFJ8c2hF1Lq5P3nW8ZbTQh4XrT new-user@<host-ip>"

useradd -m -s /bin/bash "$1"
passwd -l "$1"
mkdir -p /home/$1/.ssh
chmod 700 "/home/$1/.ssh"
echo "$2" > /home/$1/.ssh/authorized_keys
chmod 600 "/home/$1/.ssh/authorized_keys"
chown -R "$1:$1" "/home/$1/.ssh"
