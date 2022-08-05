#!/bin/bash 

sudo tail -n 1 /var/webserver_monitor/unauthorized.log > temp 

if (diff temp /var/webserver_monitor/last.log)
then
echo "No unauthorized access"
fi


sudo tail -n 1 /var/webserver_monitor/unauthorized.log > temp2
sudo cp temp2 /var/webserver_monitor/last.log
