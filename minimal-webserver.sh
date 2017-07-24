#!/bin/bash
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Minimal webserver using 'netcat'.

while true;
    do netcat -vv -l -s 127.0.0.1 -p 8080 -c 'echo -e "HTTP/1.1 200 OK\r\n$(date)\r\n\r\n"; cat < ./index.html';
done