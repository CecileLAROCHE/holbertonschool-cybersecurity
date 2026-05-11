#!/bin/bash
ps -eo pid,pcpu,comm --sort=-pcpu | awk 'NR>1 {print $1, $3}' | head -n 1
