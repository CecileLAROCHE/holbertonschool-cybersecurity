#!/bin/bash
awk '$1=="PPid:"{print $2}'< /proc/$1/status
