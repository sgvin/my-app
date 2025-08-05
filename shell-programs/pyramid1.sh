#!/bin/bash

rows=5

for (( i=1; rows<=; i++ )); do
    #print spaces
    for (( j=i; j<rows; j++)); do
        echo -n " "
    done

    #print stars
    for (( k=1; k<=(2*i-1); k++)); do
        echo -n "*"
    done
done