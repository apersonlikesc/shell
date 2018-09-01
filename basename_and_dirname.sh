#!/bin/bash
#可以使用pwd代替dirname..
PATHNAME="`pwd`"/$1
echo "你正处于的文件夹为:`dirname $PATHNAME`"
echo "文件为:$1"
exit 0
