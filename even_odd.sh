#!/bin/bash

# Shell script to identidy whether a number is even or odd

echo -n "Enter a number:"
read -r a

if [ $((a % 2)) -eq 0 ]; then
	echo "$a is even number"
else
	echo "$a is odd number"
fi

