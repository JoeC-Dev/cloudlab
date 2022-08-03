#!/bin/bash 

sudo tail -n 1 /var/webserver_monitor/aunauthorized.log > temp 

if (diff temp last.log)
then
echo hey
fi


sudo tail -n 1 /var/webserver_monitor/aunauthorized.log > /var/webserver_monitor/last.log
