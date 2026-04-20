#!/bin/bash

## ROOT CHECK   ← première vraie ligne du script
if [ $EUID -ne 0 ] ; then
	printf "This script must be run as root\n" >&2
	exit 1
fi

## initialisation logging

## chargement config

## chargement libs

## log "Hardening framework initialized"