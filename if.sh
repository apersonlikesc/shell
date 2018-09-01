#!/bin/bash

if [ $# -lt 2 ]
then
    echo "参数小于两个"
    exit 1
elif [ $# -gt 2 ]
then
    echo "参数超过两个"
    exit 1
fi

echo "正常"
exit 0
