#!/bin/bash

echo "back up files"
echo "============="

for DIR in ./*
do
    if [ -d $DIR ]
    then
        basebir=`basename $DIR`
        echo "create directory $DIR"
        echo "..........."

        mkdir -p ~/backup/$DIR
        if [ $? -eq 0 ]
        then
            for extension in sh c
            do
                echo -n "Back up $DIR/*.$extension to "
                echo "backup/$basedir"
                ls $DIR/*.$extension >/dev/null 2>&1
                if [ $? -eq 0 ]
                then
                    ls $DIR/*.$extension 
                    cp $DIR/*.$extension ~/backup/$DIR
                    echo DONE
                else
                    echo "文件中没有.$extension类型的文件"
                fi
            done
        else
            echo "$DIR/*.$extension 备份失败"
            exit 1
        fi
    else
            echo "$DIR不是目录"
            continue
    fi
    done
    echo "finish"

    exit 0
