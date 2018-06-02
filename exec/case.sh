#!/bin/bash

echo "a|b|c|d"

echo "输入上边的其中一个字母"

read alpha
case $alpha in
    "A" | "a" )
        echo "aaaaaaaa"
        ;;
    "B" | "b" )
        echo "bbbbbb"
        ;;
     "C" | "c" )
        echo "cccccc"
        ;;
     "D" | "d" )
        echo "dddddd"
        ;;
    *)
        echo "你没有正常出招"
        ;;
esac
echo "case 语句结束,byebye"
exit 0


