#!/bin/bash
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Basic TCP scan of target using 'netcat'.

# Change IP address to the desired target
# Scans first 1000 ports
# When using domain name instead of IP address remove '-n' switch
# Result is written in STDERR. Redirect STDERR file descriptor to
# STDOUT file descriptor. Display just open ports
netcat -vv -z -n 0.0.0.0 1-1000 2>&1 | grep succeeded