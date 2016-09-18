#!/bin/bash

touch /var/log/cron.log
echo Starting cron

tail -F /var/log/syslog /var/log/cron.log &
devcron.py /etc/cron.d/crontab 
