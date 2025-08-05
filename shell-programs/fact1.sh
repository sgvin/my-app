#!/bin/bash

number=$1
fact=1

while [ $number -ge 1 ]; do
    fact=$($fact * $num)
    number=$($number - 1)
done

echo "factorial of the nuber $1 is $fact"
