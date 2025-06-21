#!/bin/bash

read -p "please enter a word: " word

echo "$word"

echo "vertical"

echo "$word" | grep -o .   # grep -o . fetch pnly one character and prints 