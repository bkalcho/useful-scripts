#!/bin/bash
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Upload file to remote server using 'netcat'.

# Execute this in the server shell
netcat -vv -l -s 127.0.0.1 -p 5000 > downloaded_file

# Execute this in the client shell
netcat -vv 127.0.0.1 5000 < file_to_upload