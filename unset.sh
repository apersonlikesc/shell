#!/bin/bash

read -p "your name:" name
echo -e "hello,$name"
unset name
echo -e "unset name"
echo "hell,$name"
echo
if [ -z $name ]
then
    echo "name is null"
else
    echo "name is not null"
fi
exit 0

