#!/bin/bash

## /etc/shadow ($1)

awk -F: '($2 ~ /\$1\$/) { print $1 }' "$1"