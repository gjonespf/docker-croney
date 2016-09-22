#!/bin/bash

logger "storagemgr started"

for SCRIPT in /app/scripts/init/*
	do
		if [ -f $SCRIPT -a -x $SCRIPT ]
		then
         echo "Running script $SCRIPT"
			$SCRIPT
		fi
	done
	