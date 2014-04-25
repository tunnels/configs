#! /bin/bash

filename=`basename $1 .mov`
cd ~/Desktop/$filename/
ffmpeg -i $1 -c:v libvpx -b:v $2 -crf $3 $filename.webm

