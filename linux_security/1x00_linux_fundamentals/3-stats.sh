#!/bin/bash
ls -l "$1" | awk {extraire owner} | sort | uniq -c | sort -nr | head -n 1
