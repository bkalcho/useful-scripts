#!/usr/bin
#AUTHOR: Bojan G. Kalicanin
#DATE: 23-Jul-2017
#SYNOPSIS: Clone local drive using 'netcat' and 'dd' utilities.

# Execute this in the server shell
netcat -vv -l -s 127.0.0.1 -p 5000 | dd of=/dev/sdb

# Execute this in the client shell
dd if=/dev/sda | netcat -vv 127.0.0.1 5000