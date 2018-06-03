#!/bin/bash
#没有加上文件的处理,比较垃圾
read oneline

while [ "$oneline" != "" ]
do
    echo "y"|sudo pacman -R $oneline
    read oneline
done
