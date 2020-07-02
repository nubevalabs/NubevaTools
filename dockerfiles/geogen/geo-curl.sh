
#!/bin/bash
#NOTES: USe this as the basis for creating a container to generate traffic that will populate geographical territory

#set arguements
NAME=


# Download files from various global locations
while true; do
echo "Bangalore Download"
curl --output /dev/null http://speedtest-blr1.digitalocean.com/10mb.test
echo "UK Download"
curl --output /dev/null http://speedtest-lon1.digitalocean.com/10mb.test
echo "Canada Download"
curl --output /dev/null http://speedtest-tor1.digitalocean.com/10mb.test
echo "France Download"
curl --output /dev/null http://speedtest-fra1.digitalocean.com/10mb.test
echo "Netherlands Download"
curl --output /dev/null http://speedtest-ams3.digitalocean.com/10mb.test
echo "Singapore Download"
curl --output /dev/null http://speedtest-sgp1.digitalocean.com/10mb.test
sleep 120
done
