#!/bin/bash
chattr -i "$1" && unlink "$1"