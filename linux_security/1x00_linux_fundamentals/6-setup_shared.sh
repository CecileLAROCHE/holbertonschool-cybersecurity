#!/bin/bash
mkdir -p "$1" && chown :$2 "$1" && chmod 2770+t "$1"
