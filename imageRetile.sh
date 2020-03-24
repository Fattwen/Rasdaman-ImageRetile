#!/bin/bash

echo '================= start  process ================='
filelist=../big_image_list.txt #檔案清單
process_count=0
lns=`wc -l $filelist`
lines=`expr "$lns" : '\([0-9]*\)'`
process_limit=100
count=0
time=1
target_dir=../retile #輸出路徑
width=10000 #切割寬度
height=10000 #切割高度

while [ "$process_count" -lt "$process_limit" ] && [ "$count" -lt "$lines" ]
do	
	echo ==================================================	
	input_data=$(head -n $time $filelist | tail -n 1)
	echo 'input : ' $input_data
	input_file=../$input_data

	count=$(($count+1))
	time=$(($time+1))
	echo ================ Process Progress ================
	file_exists=1
	test -f "input_file" && file_exists=1
	
	if [ "$file_exists" = 1  ]
	then
		process_count=$(($process_count+1))
		echo "$count.$input_data"
		gdal_retile.py -ps $width $height -targetDir $target_dir $input_file
	else
		echo "$count.$input_data not found";
	fi
done

