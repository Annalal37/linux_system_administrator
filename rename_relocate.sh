#!/bin/bash
IFS='
'
subtitle_suffix=".srt"
video_suffix=".mp4"
for video in ./"Intro to Inferential Statistics Videos"/*mp4; do
	prefix_video="./Intro to Inferential Statistics Videos/"
	video_1=${video#$prefix_video}
	video_prenum=$(echo $video_1 | grep -oP "^\d{1,3}" | bc)
	for subtitle in ./"Intro to Inferential Statistics Subtitles"/"Lesson 16: χ^2 Tests"/*srt;do
		prefix_subtitle="./Intro to Inferential Statistics Subtitles/Lesson 16: χ^2 Tests/"
		subtitle_prenum=${subtitle#$prefix_subtitle}
		video_newname=${subtitle_prenum%$subtitle_suffix}$video_suffix
		subtitle_prenum=$(echo $subtitle_prenum | grep -oP "^\d{1,3}" | bc)
		if [ $video_prenum -eq $[subtitle_prenum+26+56+66+75+52+51+52+58+38+50] ];then
			cp $video ./"Intro to Inferential Statistics Subtitles"/"Lesson 16: χ^2 Tests"/
		
			mv ./"Intro to Inferential Statistics Subtitles"/"Lesson 16: χ^2 Tests"/$video_1 ./"Intro to Inferential Statistics Subtitles"/"Lesson 16: χ^2 Tests"/$video_newname
		fi
	done
done
	
