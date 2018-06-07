#!/bin/bash

tempdir=globbing

mkdir $tempdir

cd $tempdir

touch a.txt b.txt c.txt

count=1
while [ "$count" -le 4 ]
do
    touch "tempdir.$count"
    let count+=1
done

echo "所有文件:"
ls *

echo "txt结尾文件:"
ls ?.txt

echo "a或者b 开始的文件"
ls [ab]*

echo "不以a或者b 开始的文件"
ls [^ab]*

echo "不以a或者b 开始的文件"
ls [!ab]*

echo "文件名带有a-c的文件"
ls [a-c]*

echo "以数字结尾的文件"
ls tempdir.[1-4]

cd - > /dev/null

echo "将文件删除"
rm -rfi $tempdir
exit 0
