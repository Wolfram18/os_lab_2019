#!/bin/bash
make -f makefile clean
make

#chmod ugo+x start.sh
#./start.sh

#./tcpserver --port 20001 --bufsize 4 &
#./tcpclient --port 20001 --bufsize 4 --ip 127.0.0.1

#./udpserver --port 20001 --bufsize 4 &
#./udpclient --port 20001 --bufsize 4 --ip 127.0.0.1

#kill $(pgrep tcpserver)
#kill $(pgrep udpserver)