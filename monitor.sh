#!/bin/bash 

sudo cat -n /var/webserver_monitor/unauthorized.log > temp

declare -i entries2=$(tail -n 1 temp |  grep -Eo '^[^d]+')

if ((entries2>(entries*2)))
then
echo hey
fi
