!#/bin/bash
set -x

sudo apt update
sudo apt install -y nfs-common

sudo mkdir -p /var/webserver_log
sleep 1m
sudo mount 192.168.1.1:/share/log /var/webserver_log/
