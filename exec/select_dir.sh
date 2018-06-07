#!/bin/bash

echo "列出下列哪一个目录下的文件"

select dir in /bin/ /etc/ ~ quit
do
    if [ ! -z $dir ]
    then
        if [ $dir = "quit" ]
        then
            echo "byebye"
            break;
        else
             echo "你选择了\"$dir\"目录"
             ls $dir
         fi
     else
         echo "错误的选项\"$REPLY\",请重新选择"
     fi
     echo "列出下列哪一个目录下的文件"
done

exit 0
