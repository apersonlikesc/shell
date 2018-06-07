#!/bin/bash

checkip()
{
    
    case $1 in
        ""|*[!0-9.]*|*[!0-9])
            return 1
            ;;
    esac


    local IFS=.
    set -- $1

    if [ $# -eq 4 ] && [ ${1:-999} -le 255 ] && [ ${2:-999} -le 255 ] &&
        [ ${3:-999} -le 255 ] && [ ${4:-999} -le 255 ]
        then
            return 0
        else
            return 1
    fi
}

for IP in 127.0.0.1 .0.0.1 ...1 172.15.2 172.288.53.1 131.1.0.
do
    checkip $IP

    if [ $? -eq 0 ]
    then
        printf "%15s:%s\n" "${IP}" "valid ip address"
    else
        printf "%15s:%s\n" "${IP}" "invalid ip address"
    fi
done

while [ true ]
do
    echo -n "输入你的ip地址"
    read ipaddress
    if [ "$ipaddress" = quit ]
    then 
        break;
    fi

    checkip ${ipaddress}
    if [ $? -eq 0 ]
    then 
        echo "ip有效"
    else
        echo "ip无效"
    fi
done
exit 0
