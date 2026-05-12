#!/bin/bash
ss -lnt4p | awk -v port="$1" '
NR > 1 {
    split($4, a, ":")
    if (a[2] == port) {
        split($6, b, "\"")
        print b[2]
    }
}'
