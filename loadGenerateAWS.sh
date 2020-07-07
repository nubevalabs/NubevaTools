#!/bin/bash


#set arguements
NAME=

#Loop a bunch of interesting things that use encrypted traffic

while true; do
#Grab 100MB file on S3
#curl -s -O /dev/null http://nubevalabs.com/100MB.zip
#curl -s -O /dev/null https://nubevalabs.com/100MB.zip

#Grab 1MB file on S3
curl -s -O /dev/null http://nubevalabs.com/1MB.zip
#curl -s -O /dev/null https://nubevalabs.com/1MB.zip


sleep $[ ( $RANDOM % 5 )  + 1 ]s
done
