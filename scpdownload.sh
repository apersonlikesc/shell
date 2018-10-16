#!/bin/bash
while true
do

    echo "------------------------------------------------"
    echo "------------------------------------------------"
    echo "1:下载"
    echo "2:上传"
    echo "3:下载文件夹"
    echo "4:上传文件夹"
    echo "其他:退出"
    read command1
    case $command1 in
        1)
            echo "下载什么:"
            read downfrom
            echo "下载到哪里"
            read downto
            scp root@47.100.176.113:$downfrom $downto
            echo "完成"
            ;;
        2)
            echo "上传什么:"
            read upfrom
            echo "上传到哪里"
            read upto
            scp $upfrom root@47.100.176.113:$upto
            echo "完成"
            ;;
        3)
            echo "下载什么:"
            read downfrom
            echo "下载到哪里"
            read downto
            scp -r root@47.100.176.113:$downfrom $downto
            echo "完成"
            ;;
        4)
            echo "上传什么:"
            read upfrom
            echo "上传到哪里"
            read upto
            scp -r $upfrom root@47.100.176.113:$upto
            echo "完成"
            ;;
        *)
            echo "没有东西下载"
    echo "------------------------------------------------"
    echo "程序退出"
    echo "------------------------------------------------"
            exit 1;;
esac
done
