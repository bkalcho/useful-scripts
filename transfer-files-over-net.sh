#!/bin/bash
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Transfer compressed files over the network using 'netcat' and
# 'tar' utilities.

# Execute this in the server shell
netcat -vv -l -s 127.0.0.1 -p 5000 | tar -xzvf -

# Execute this in the client shell
tar -czvf - * | netcat -vv 127.0.0.1 5000