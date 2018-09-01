#!/bin/bash

handler()
{
    echo "捕捉sigalarm信号"
    exit 14
}

timer()
{
    local interval=${1:-10}

    if [ $interval -gt 0 ]
    then
        sleep $interval && kill -s 14 $$ &
        timerpid=$!
    else
        echo "出现错误"
        exit 1
    fi

}
unset_timer()
{
    kill `pgrep -P $timerpid`

    kill $timerpid
}

trap handler 14

echo "你有13秒时间输入信息"
timer 13

read -p "输入你的遗言:" pp

unset_timer

echo "你的遗言是$pp"
echo "bye"
exit 0
