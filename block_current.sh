#!/bin/bash
echo "使用命令块输出文件"
{ date;cal;pwd;}>a.txt
cat a.txt
exit 0
