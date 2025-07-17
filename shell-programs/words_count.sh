#!/bin/bash

if [ $# -eq 0 ]; then
   echo "please pass file path as mentioned below"
   echo "$0 file_path"
   exit 1
fi

file=$1

if [ ! -f $file ]; then
   echo "file not present in given location: $file"
   exit 1
fi

count=$(grep -o "error" $file | wc -l)

echo "error word present in a given file is $count"
