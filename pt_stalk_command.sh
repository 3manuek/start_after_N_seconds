#!/bin/bash
#--run-time=60 --sleep=60
PTDEST=ptstalk
#TIMETHRESHOLD=$((3600*3 + 1800))
TIMETHRESHOLD=30
sudo ./pt-stalk --interval=30 --iterations=2 --cycles=1 --function=start_after_N_seconds.sh --threshold=$TIMETHRESHOLD --dest=$PTDEST -- --user=msandbox --pass=msandbox --port=5623 --socket=/tmp/mysql_sandbox5623.sock &
echo $! > .pidptstalk
