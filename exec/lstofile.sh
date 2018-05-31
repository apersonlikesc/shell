#!/bin/bash

echo "ls的输出已经放到a.txt文件中"
ls>a.txt
line=`cat a.txt|wc -l`
echo "共有$line行"
exit 0
