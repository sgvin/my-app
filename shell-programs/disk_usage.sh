#!/bin/bash

usage=`df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g'`

if [ $usage -ge 80 ]; then
    echo "disk usage is above 80%"
    echo "current usage $usage %"
else
    echo "disk usage is ok"
    echo "current usage $usage %"
fi