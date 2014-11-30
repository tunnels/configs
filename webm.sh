#! /bin/bash

filename=`basename $1 .mov`
ffmpeg -i $1 -c:v libvpx -b:v $2 -crf $3 ~/Desktop/$filename.webm