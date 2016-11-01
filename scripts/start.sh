#!/bin/bash
message="Croney started"
echo $message
logger $message

chmod +x /app/scripts/init/*.sh
#Perms sync issues for docker esp aufs
sync; sleep 1

message="Running scripts"
echo $message
logger $message
for SCRIPT in /app/scripts/init/*
	do
		if [ -f $SCRIPT -a -x $SCRIPT ]
		then
			message="Running script $SCRIPT"
			echo $message
			logger $message
			$SCRIPT $@
		fi
	done
