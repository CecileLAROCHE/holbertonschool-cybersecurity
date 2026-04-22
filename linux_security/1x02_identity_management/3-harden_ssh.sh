#!/bin/bash

## /etc/ssh/sshd_config($1)

sed -i -E 's/^PermitRootLogin.*/PermitRootLogin no/' $1
sed -i -E 's/^PasswordAuthentication.*/PasswordAuthentication no/' $1
sed -i -E 's/^PubkeyAuthentication.*/PubkeyAuthentication yes/' $1

if sshd -t
then
    echo "SSH config ok"
    service ssh reload
else
    echo "ERROR: SSH configuration invalide"
    exit 1
fi