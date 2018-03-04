#!/bin/bash

# Kirubel Worede
# CSE 374_HW3_ Problem2
# 10/23/2015
# This Script will  extract the URLs and writes them into a text file.

if [ $# -lt 2 ]
then
    echo >&2 "Error: Not enough files for this command"
    exit 1
elif [ -f $1 ]
    then
    grep "<strong><a href=" $1 | grep http:// | sed 's|^.*http://|http://|' | sed 's|/\?">.*|/|' > $2
    exit 0
else
    echo >&2 "Error: The html file doesn't exist" 
    exit 1
fi    


#    grep http:// $1 | sed 's|^.*http://|http://|' | sed 's|/\?">.*|/|' > $2
