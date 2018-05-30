#!/bin/bash
IFS='
'
#STR="26 - Something Fun.mp4"
#REGEX="^2[0-6] -.*"
#if echo "$STR" | egrep -q "$REGEX"; then
#	echo "matched"
#else
#	echo "no match"
#fi
#string="US/Central - 10:26 PM (CST)"
#etime="${string%US}"
#echo $string | grep -oP "\-\s+\K\d{2}:\d{2}"

#i="./Intro to Inferential Statistics Videos/1 - Lauren's Intro Video.mp4"
#etime="${i%"\.\/Intro to Inferential Statistics Videos\/"}"
#echo $i | grep -oP "\d.*"

cd ./"Intro to Inferential Statistics Subtitles"/"Introduction and Lesson 7 Review"
#count=1
for i in *mp4; do
	j=$(echo $i | grep -oP "^\d{1,2}" | bc)
	if [ $[$j/10] -eq 0 ];then
		echo $j
		k="0$i"
		echo $k
	       	mv ./$i $k	
	fi

#	if echo $i | grep -oP "^$count -.*$";then
#		i="0$i"	
#		echo $i
#	fi
#	echo $count
#	count=$[count+1]
#	if [ $count -eq 10 ];then
#		break
#	fi
	#for j in ./*srt;do
#		REGEX="^1 -"
#		if [-z "${i##*$REGEX*}" ];then
#			echo $i
#		fi

		#if (echo $i | grep -oP "$REGEX") && (echo $j | grep -oP "$REGEX");then
		#	echo $i
		#	echo $j
		#fi
		#echo $i | grep -oP "$REGEX"
		#echo $j | grep -oP "$REGEX"
	#	count=$[count+1]
		
	#done
done

