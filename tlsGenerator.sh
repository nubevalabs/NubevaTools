#!/bin/bash

#set arguements
NAME=

num_iterations=$1

# If no arguments were supplied, run the loop one time
if [ $# -eq 0 ]
then
    num_iterations=1
fi

#Download bunch of interesting things that use encrypted traffic $num_iteration times

for ((n=0;n<$num_iterations;n++))
do
    Grab EICAR as binary
    wget -q -O /dev/null https://secure.eicar.org/eicar.com
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #TLS version of TestmyIDS.com
    wget -q -O /dev/null https://nubevalabs.s3.amazonaws.com/testmyids.txt
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download Google Homepage via TLS 1.3
    wget -q -O /dev/null https://www.google.com
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download BBC Homepage via TLS
    wget -q -O /dev/null https://www.bbc.com
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download Malware Sample from Fireeye. Original URL http://fedeploycheck.fireeye.com/appliance-test/test-infection.exe
    wget -q -O /dev/null https://nubevalabs.s3.amazonaws.com/samples/malware-test-infection.exe
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
done