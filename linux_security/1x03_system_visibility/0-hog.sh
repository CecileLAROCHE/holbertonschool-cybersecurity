#!/bin/bash
ps -eo pid=,comm= --sort=-pcpu | head -n 1
