#!/bin/bash
filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
	echo "please specify 2 command line arguments"
	exit 1
fi

if [ ! -d "$filesdir" ]; then
	echo "not a valid directory"
        exit 1
fi

numFiles=$(grep -lr "$searchstr" "$filesdir" | wc -l)
numLines=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $numFiles and the number of matching lines are $numLines"




