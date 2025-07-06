#!/bin/bash

rows=5

for (( i=rows; i>=1; i-- ))
do
    # Print spaces
    for (( j=rows; j>i; j-- ))
    do
        echo -n " "
    done

    # Print stars
    for (( k=1; k<=(2*i-1); k++ ))
    do
        echo -n "*"
    done

    # New line
    echo
done
