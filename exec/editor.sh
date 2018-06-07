#!/bin/bash

help()
{
    echo "use `basename $0` [option] -f file"
    echo  "-e [editor] just like vim nano"
    echo  "-p [pager] just like cat more"

    exit 1
}
#OPTERR=0
while getopts f:e:p: OPTION
do
    case $OPTION in
        f)
            TARGET_FILR=$OPTARG
            ;;
        e)
            editor=$OPTARG
            ;;
        p)
            PAGER=$OPTARG
            ;;
        ?)
            help
            ;;
    esac
done

if [ -z $TARGET_FILR ]
 then
    help
fi

echo

if [ -r "$TARGET_FILR" -a -w "$TARGET_FILR" ]
 then
    read -p "你要编辑$TARGET_FILR文件吗?"
    if [ $REPLY = "y" -o $REPLY = "Y" -o $REPLY = "yes" ]
    then
        echo "${editor:-vim}"
        sleep 1
        ${editor:-vim} "$TARGET_FILR"
    fi
    read -p "你要查看$TARGET_FILR文件吗?"
    if [ $REPLY = "y" -o $REPLY = "Y" -o $REPLY = "yes" ]
    then
        echo "${PAGER:+cat}"
        sleep 1
        ${PAGER:+cat} "$TARGET_FILR"
    fi


    echo "bye"
 else
    echo "file $TARGET_FILR can not read,use another file"
    echo "bye"

    exit 1
fi
exit 0
