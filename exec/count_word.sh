#!/bin/bash

count(){
    if [ $# != 1 ]
    then
        echo "参数必须要有一个"
        exit 1;
    fi
    tr '+-=*.,{}()#!?<>"\n\t' ' '<$1 |\
    tr 'A-Z' 'a-z'|\
    tr -s ' '|\
    tr ' ' '\n'|\
    sort |\
    uniq -c|\
    sort -rn
}
echo "计算单词数"
while :
do
    read -p "输入文件名称:"
    case "$REPLY" in
        [Qq]|[Qq][Uu][Ii][Tt])
            echo "Bye"
            exit 0
            ;;
        *)
            if [ -f "$REPLY" ] && [ -r "$REPLY" ] && [ -s "$REPLY" ]
            then
                count $REPLY
            else
                echo "$REPLY不能处理"
            fi
            ;;
    esac
done
exit 0
