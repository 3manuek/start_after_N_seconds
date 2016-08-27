#!/bin/bash
#I'm emulating a backup
FLAG_STALK=/tmp/backup_started_timestamp
date +%s > $FLAG_STALK ; sleep 120 ; rm -f $FLAG_STALK ;
