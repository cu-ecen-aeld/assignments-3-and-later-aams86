#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
        echo "please include 2 arguments"
        exit 1
fi

echo "$writestr" > "$writefile"

if [ ! -f "$writefile" ]; then
        echo "unable to create file $writefile"
        exit 1
fi
