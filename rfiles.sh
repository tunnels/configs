#!/bin/bash

if [ -d ~/Desktop/shuffle ]; then
	rm ~/Desktop/shuffle/*
fi

if [ ! -d ~/Desktop/shuffle ]; then
	mkdir ~/Desktop/shuffle
fi

cd "$1"
find . -maxdepth 2 -type f | gshuf -n$2 > /tmp/rfiles.txt
files=$(cat /tmp/rfiles.txt)
cp $files ~/Desktop/shuffle

