#!/bin/bash 

sudo grep -n -i  "invalid" /var/log/auth.log | grep from | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" > tex
