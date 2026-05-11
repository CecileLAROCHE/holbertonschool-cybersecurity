#!/bin/bash
ps -eo pid,pcpu,comm --sort=-pcpu | head -n 1