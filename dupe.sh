#! /bin/bash

filename=$1

if [ ${filename: -4} == ".jpg" ]
then
	convert $filename temp_file.png;
	convert temp_file.png $filename
	rm temp_file.png

elif [ ${filename: -4} == ".png" ];
then	
	convert $filename temp_file.jpg;
	convert temp_file.jpg $filename
	rm temp_file.jpg
fi