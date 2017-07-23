#!/bin/bash
# AUTHOR: Bojan G. Kalicanin
# SYNOPSIS: Minimal webserver using 'netcat'.
# DATE: 23-Jul-2017

while true;
    do netcat -vv -l -s 127.0.0.1 -p 8080 -c 'echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n"; cat < ./index.html';
done