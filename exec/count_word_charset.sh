#!/bin/bash

count(){
    if [ $# != 1 ]
    then
        echo "参数需要一个"
        exit 1;
    fi
    #删除标点和特殊
    tr '[:punct:]' ' '<$1|tr '[:space:]' ' '|tr '[:cntrl:]' ' '|\
    tr '[:upper:]' '[:lower:]'|\
    tr -s ' '|\
    tr ' ' '\n'|\
    sort |\
    uniq -c |\
    sort -rn
}
echo "数单词"
while :
do
    read -p "文件:"
    case "$REPLY" in
        [Qq]|[Qq][Uu][Tt][Ii])
        echo "bye"
        exit 0
        ;;
    *)
        if [ -f $REPLY ]&&[ -s $REPLY ]&&[ -r $REPLY ]
        then
            count $REPLY
        else
            echo "不能处理"
            exit 0
        fi
esac
done
exit 0
