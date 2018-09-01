#!/bin/bash

for (( i=1;i<12;i++ ))
do
    echo "---------第$i题----------" >> 统计
    sort $i|uniq -c >> 统计
done
