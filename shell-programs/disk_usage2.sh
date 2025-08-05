#!/bin/bash

usage=$(df -h . | tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g')

if [ $usage -ge 80 ]; then.
    echo "usage is above 80% and current usage is $usage"
else
    echo "usage is ok and current usage is $usage"
fi