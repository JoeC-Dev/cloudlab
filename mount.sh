!#/bin/bash
set -x

sudo apt update
sudo apt install -y nfs-common

mkdir webserver_monitor
sleep 1m
sudo mount 192.168.1.1:/var/webserver_log webserver_monitor/
