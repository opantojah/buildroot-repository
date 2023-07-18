#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Obed

#set -e
#set -u



if [ -z $1 ] || [ -z $2 ];
then
	echo "Not enough arguments"
	exit 1
fi


filesdir=$1
searchstr=$2

if [ -d "$filesdir" ];
then
	cd $filesdir
	X=$(ls -l | wc -l)
	X=$((X-1))
	Y=$(grep -iR $searchstr | wc -l)
	echo "The number of files are $X and the number of matching lines are $Y"
	exit 0
else
	echo "$filesdir does not represent a directory on the filesystem"
	exit 1
fi

