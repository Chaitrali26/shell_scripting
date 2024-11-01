#!/usr/bin/env bash
# print all the files in the dir

#this line sets the positional parameters ($1, $2, etc.) to all the files and directories in the current working directory, using the * wildcard

set -- *

for i; 
do
	echo $i
done
