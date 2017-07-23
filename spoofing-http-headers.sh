#!/bin/bash
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Spoof HTTP headers using 'netcat'.

# Request file should be constracted, with at least next content:
####### request ########
# GET / HTTP/1.1
# Host: google.com
# Referrer: mypage.com
# User-Agent: mybrowser
####### request ########
cat request | netcat -vv google.com 80 > response