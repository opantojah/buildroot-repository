#!/bin/sh
# Tester script for assignment 1 and assignment 2
# Author: Obed

if [ -z "$1" ] || [ -z "$2" ];
then
	echo "Not enough arguments"
	exit 1
fi

writefile=$1
writestr=$2

direc=$(dirname "$writefile")
filename=$(basename "$writefile")

if [ -d $direc ]
then
	#cd $direc
	echo "$writestr"  > $writefile
	if [ -e $writefile ];
	then
		#echo "File create"
		exit 0	

	else
		echo "The file could not be created"
		exit 1
	fi

else
	mkdir -p $direc
	#cd $direc
	echo "$writestr"  > $writefile
	if [ -e $writefile ];
	then
		exit 0	

	else
		echo "The file could not be created"
		exit 1
	fi
fi