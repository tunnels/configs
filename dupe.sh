#! /bin/bash

filename=$1

if [ ${filename: -4} == ".jpg" ]
then
	gm convert "$filename" temp_file.png;
	gm convert temp_file.png "$filename"
	rm temp_file.png

elif [ ${filename: -4} == ".png" ];
then	
	gm convert "$filename" temp_file.jpg;
	gm convert temp_file.jpg "$filename"
	rm temp_file.jpg

elif [ ${filename: -4} == ".gif" ]
then
    gm convert "$filename" temp_file.png;
    gm convert temp_file.png "$filename"
    rm temp_file.png
fi