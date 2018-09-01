#!/bin/bash

echo "删除后缀.o的所有文件"

echo -n "输入目录或者是quit:"

read dir_source

while [ "$dir_source" != "quit" ]
do
    if [ -d $dir_source ]
    then
        echo "正在列出.o文件"


        find $dir_source -name \*.o -print

        find $dir_source -name \*.o -print -exec rm '{}' \;>file.list

        echo "清理完了"

        echo -n "输入目录或者quit"

        read dir_source
    else
        echo "没有这个目录啦"
        echo "输入目录或者quit"
        read dir_source
    fi
done

echo "Bye"

exit 0
