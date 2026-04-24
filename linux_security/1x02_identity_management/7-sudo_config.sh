#!/bin/bash

## junior($1) 

echo "$1 ALL=(ALL) /usr/bin/systemctl restart apache2, /usr/bin/journalctl" > /etc/sudoers.d/"$1"
chmod 440 /etc/sudoers.d/"$1"

visudo -c
