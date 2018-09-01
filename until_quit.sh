#!/bin/bash

quit_command=quit

until [ "$input" = "$quit_command" ]
do
    echo "please input command"
    read input

    echo "你输入了$input 命令"

    case $input in
        "a"|"b")
            echo "字母?"
            ;;
        "1"|"2")
            echo "数字?"
            ;;
        *)
            echo "其他"
            ;;
    esac
done
echo "bye"
exit 0
