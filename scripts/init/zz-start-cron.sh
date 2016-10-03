#!/bin/bash

echo "Starting cron with args '$@'"
tail -F /var/log/syslog /var/log/cron.log &
#Expects params from cmd
devcron.py $@ 
