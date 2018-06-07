#!/bin/bash

day=$(date +%A)
echo "Date `date +%Y-%m-%d`"
echo  "today is $day"

if [ $day = "Saturday" -o $day = "Sunday" ]
then
    echo "hahahahahahhaha"
else
    echo "good luck"
fi

echo "去年是`expr \`date +%Y\` - 1`"
echo "明年是$(expr $(date +%Y) + 1)"

echo -n "当前登录的用户是"
echo $(who|cut -c 1-8 |sort -u)
exit 0
