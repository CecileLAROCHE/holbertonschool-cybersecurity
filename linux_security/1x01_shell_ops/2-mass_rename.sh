#!/bin/bash
find "$1" -type f -name "*.log" | xargs -I {} mv {} {}.old
