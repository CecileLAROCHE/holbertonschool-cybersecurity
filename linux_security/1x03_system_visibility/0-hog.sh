#!/bin/bash
ps -eo pid=,comm= --sort=-cpu | head -n 1
