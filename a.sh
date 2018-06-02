#!/bin/bash

read oneline

while [ "$oneline" != "" ]
do
    echo $oneline| tr '[:digit:]' ' '|
        tr " .-" " "|cat
    read oneline
done
