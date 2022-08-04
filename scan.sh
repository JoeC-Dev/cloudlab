#!/bin/bash

sudo grep -i -E 'Invalid' /var/log/auth.log | grep from | cut -d ' ' -f 1,2,3,10 > temp

while IFS= read -r line; do arr+=("$line");done <temp

sudo touch /var/webserver_log/unauthorized.log

for value in "${arr[@]}"; do echo $value>temp2;date=$(cut -d ' ' -f 1,2 temp2); ip=$(cut -d ' ' -f 3 temp2);country=$(geoiplookup $ip); echo "IP:" $ip " ||| COUNTRY:" $country " ||| DATE:" $date >> temp3; done

sudo cp temp3 /var/webserver_log/unauthorized.log

rm temp2 temp3

# NEED TO ONLY DO THIS ONCE WHEN BOOTING MIGHT BE ABLE TO PUT IT IN SETUP APACHE 
#echo "*/5 * * * * bash /local/repository/scan.sh" > temp5

#sudo crontab temp5

#sudo cat /var/webserver_log/unauthorized.log
