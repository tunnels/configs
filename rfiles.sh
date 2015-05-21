#!/bin/bash

dirName="$2"

if [ -d ~/Desktop/$dirName ]; then
	dirName="rfiles"
fi

mkdir ~/Desktop/$dirName

IFS=$'\n'
cd "$1"
find . -maxdepth 2 -type f | gshuf -n$3 > /tmp/rfiles.txt
files=$(cat "/tmp/rfiles.txt")
cp $files ~/Desktop/$dirName

