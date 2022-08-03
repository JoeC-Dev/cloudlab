#!/bin/bash 

sudo tail -n 1 /var/webserver_monitor/unauthorized.log > temp 

if (diff temp /var/webserver_monitor/last.log)
then
echo hey
fi


sudo tail -n 1 /var/webserver_monitor/unauthorized.log > /var/webserver_monitor/last.log
