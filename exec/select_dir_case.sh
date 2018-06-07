#!/bin/bash

echo "选择神码目录:"

select dir in /etc/ /bin/ ~ quit
do
    case $dir in
        quit)
            echo "byebye"
            break
            ;;
        /*)
            echo "你选择了\"$dir\"目录"
            ls $dir
            ;;
        *)
            echo "你选的是什么,请重新选择"
            ;;
        esac
        echo "选择神码目录:"
    done
