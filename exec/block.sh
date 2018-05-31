#!/bin/bash
echo -n "文件名:"

read file
echo $file
count=0
filename=`basename $file`
while read line
do
	count=`expr $count + 1`
	#count=$((count+1))
	echo $count:$line
done<$file >$filename.lined

echo "finish"
exit 0
