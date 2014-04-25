#! /bin/bash

filename=`basename $1 .mov`
cd ~/Desktop/$filename/
ffmpeg -i $1 -r $2 $filename%03d.png

interval=`echo $((100/$2))`
convert -delay $interval $filename*.png -fuzz $3% -resize $4% -layers Optimize$5 $filename.gif
