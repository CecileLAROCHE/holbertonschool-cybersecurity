#!/bin/bash
ps -e --sort=-cpu -o pid=,comm= | head -n 1
