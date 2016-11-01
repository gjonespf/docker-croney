#!/bin/bash

logger "storagemgr started"

chmod +x /app/scripts/init/*.sh
#Perms sync issues for docker esp aufs
sync; sleep 1

for SCRIPT in /app/scripts/init/*
	do
		if [ -f $SCRIPT -a -x $SCRIPT ]
		then
         echo "Running script $SCRIPT"
			$SCRIPT $@
		fi
	done
