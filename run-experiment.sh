#!/bin/bash

# Kirubel Worede
# CSE 374_HW3_ Problem3
# 10/23/2015
# This Script takes a file with a list of URLs as argument and executes perform-# measurement.sh on each URL that displays their rank, URL and page-size.

rank=0
rm $2
for mytext in $(cat $1)                 
do
    rank=`expr $rank + 1`
    echo Performing measurement on $mytext ...
    pagelength=`./perform-measurement.sh $mytext`
    if [ $pagelength -ne 0 ]
    then
       echo ...success
       echo $rank $mytext $pagelength >> $2
    else
	echo ...failed
    fi
done
