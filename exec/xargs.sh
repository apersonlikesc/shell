#!/bin/bash

echo "删除所有.o后缀的文件"

echo "输入目录或者quit:"

read dir_source

while [ $dir_source != "quit" ]
do
    if [ -d $dir_source ]
    then
        find "$dir_source" -name \*.o -print
        find $dir_source -name \*.o -print|tee file.list | xargs rm -f
        echo "finish"

        echo "输入目录或者quit:"
        read dir_source
    else
        echo "你输入的东西有误,重输入:"
        read dir_source
    fi
done

echo "bye"

exit 0
