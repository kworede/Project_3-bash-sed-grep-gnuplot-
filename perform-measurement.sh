#!/bin/bash

# Kirubel Worede
# CSE 374_HW3_ Problem1
# 10/23/2015
# This Script will take a URL as an argument and outputs the size of the corresp# onding page in bytes

if [ $# -lt 1 ]
then
	echo >&2 "Error: No URL provided"
	exit 1
else
   mylength=`wget -nH -P /tmp --delete-after $1 2>&1 | grep saved | cut -f2 -d [ | cut -f1 -d / | cut -f1 -d ]`
   if [ -z "$mylength" ]
   then
     mylength=0 
   fi
   echo $mylength
   exit 0
fi

