#!/bin/bash

file=$1

count=$(grep -o "error" $file | wc -l)

echo "error word present in a given file is $count"
