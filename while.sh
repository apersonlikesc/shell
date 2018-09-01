#!/bin/bash

netwok=192.168.1

ip=30

#只要ip小于130都会运行

while [ $ip -lt 130 ];[ $ip -lt 40 ]
do
    echo -en "pingping ${network}.${ip}"

    ping -c 1 -w 1 ${network}.${ip} > /dev/null 2>&1

    if [ $? -eq 0 ]
    then
        echo "OK"
    else
        echo "Failed"
    fi

    let ip=$ip+1
done

exit 0
