#!/bin/bash
#其实可以使用cat -n xxx -.-
linenumber=1

read oneline
while [ "$oneline" != "" ]
do
    echo -e "$linenumber:$oneline\n"

    linenumber=`expr $linenumber + 1`

    read oneline
done
exit 0
