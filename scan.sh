#!/bin/bash 

full=$(sudo grep -E -i 'invalid' /var/log/auth.log | grep from | cut -d ' ' -f 1,2,10 )
echo $full > temp
ip=$(cut -d ' ' -f 3 temp)
country=$(geoiplookup $ip)
echo $full $country >> /var/webserver_log/unaothorized.log
rm temp
sudo rm /var/log/auth.log
