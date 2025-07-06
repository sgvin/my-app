#!/bin/bash
rows=5

for (( i=1; i<=rows; i++ ))
do
    # Print spaces
    for (( j=i; j<rows; j++ ))
    do
        echo -n " "
    done

    # Print stars
    for (( k=1; k<=(2*i-1); k++ ))
    do
        echo -n "*"
    done

    # New line after each row
    echo
done