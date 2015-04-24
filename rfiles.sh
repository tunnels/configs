#!/bin/bash

if [ -d ~/Desktop/rfiles_shuffle ]; then
	rm ~/Desktop/rfiles_shuffle/*
fi

if [ ! -d ~/Desktop/rfiles_shuffle ]; then
	mkdir ~/Desktop/rfiles_shuffle
fi

IFS=$'\n'
cd "$1"
find . -maxdepth 2 -type f | gshuf -n$2 > /tmp/rfiles.txt
files=$(cat "/tmp/rfiles.txt")
cp $files ~/Desktop/rfiles_shuffle

