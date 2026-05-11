#!/bin/bash
ss -tl | awk '{print $4}' | awk -F ':' '{print $2}'