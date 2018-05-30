#!/bin/bash
IFS='
'
cd ./"Intro to Inferential Statistics Subtitles"/"Introduction and Lesson 7 Review"
houzhui=".mp4"
for i in *mp4;do
	for j in *srt;do
		i1=$(echo $i | grep -oP "^\d{1,2}" | bc)
		j2=$(echo $j | grep -oP "^\d{1,2}" | bc)
		suffix=".srt"
		new_suffix=".mp4"
		j_new=${j%$suffix}$new_suffix
		if [ $i1 -eq $j2 ];then
			echo $i
			echo $j
			echo $j_new
			mv ./$i $j_new
		fi
	done
done
