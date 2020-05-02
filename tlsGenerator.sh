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
    curl -s https://secure.eicar.org/eicar.com > /dev/null
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #TLS version of TestmyIDS.com
    curl -s https://nubevalabs.s3.amazonaws.com/testmyids.txt > /dev/null
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download Google Homepage via TLS 1.3
    curl -s https://www.google.com > /dev/null
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download BBC Homepage via TLS
    curl -s https://www.bbc.com > /dev/null
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
    #Download Malware Sample from Fireeye. Original URL http://fedeploycheck.fireeye.com/appliance-test/test-infection.exe
    curl -s https://nubevalabs.s3.amazonaws.com/samples/malware-test-infection.exe > /dev/null
    sleep $[ ( $RANDOM % 10 )  + 15 ]s
done
