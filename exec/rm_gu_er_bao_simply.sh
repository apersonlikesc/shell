#!/bin/bash
#没有加上文件的处理,比较垃圾
#似乎删除没有依赖的包还不能删,我删了出现了乱码
read oneline

while [ "$oneline" != "" ]
do
    sudo pacman -R $oneline
    read oneline
done
