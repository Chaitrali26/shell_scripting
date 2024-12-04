!#/bin/sh

###############
#Author: Chaitrali
#Date: 11/25/2024
# This script outputs the node health

###############

set -x #debug mode.

df -h

free -g

nproc

#print all process in system. 
ps -ef

