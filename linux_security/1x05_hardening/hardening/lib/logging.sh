#!/bin/bash
log () {
local message="$1"
local timestamp=$(date +"%Y-%m-%d %H:%M:%S")

printf "[%s] %s\n" $timestamp $message >> /var/log/hardening.log
}