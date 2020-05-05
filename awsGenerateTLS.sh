#!/bin/bash


#set arguements
NAME=

#Loop a bunch of interesting things that use encrypted traffic

while true; do
#Grab EICAR as binary
curl -s -k https://secure.eicar.org/eicar.com > /dev/null
sleep $[ ( $RANDOM % 10 )  + 15 ]s
#TLS version of TestmyIDS.com
curl -s -k https://nubevalabs.s3.amazonaws.com/testmyids.txt > /dev/null
sleep $[ ( $RANDOM % 10 )  + 15 ]s
#Download Google Homepage via TLS 1.3
curl -s -k https://www.google.com > /dev/null
sleep $[ ( $RANDOM % 10 )  + 15 ]s
#Download BBC Homepage via TLS
curl -s -k https://www.bbc.com > /dev/null
sleep $[ ( $RANDOM % 10 )  + 15 ]s
#Download Malware Sample from Fireeye. Original URL http://fedeploycheck.fireeye.com/appliance-test/test-infection.exe
curl -s -k https://nubevalabs.s3.amazonaws.com/samples/malware-test-infection.exe > /dev/null
sleep $[ ( $RANDOM % 10 )  + 15 ]s
done

#Saved for Later
#Clone Git Repository
#git clone https://github.com/nubevalabs/demorepo.git /tmp/demorepo
#sudo rm -r /tmp/demorepo

#This is a SQL injection attempt. The 1=1 is an indicatior. 
#http://test.com/items.php?id=2 and 1=1

#AWS API call on port 443 using TLS to show user info
#JSON is always the preferred format as it visualizes easier
#aws iam get-user  --output json
#AWS API call on port 443 using TLS to show user info
#aws ec2 describe-vpcs --output json --region us-east-1
