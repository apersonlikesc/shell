#!/bin/bash

while :
do
    read -p "enter String:"

    case "$REPLY" in
        [Qq]|[Qq][Tt][Ii][Uu])
            echo "Bye"
            exit 0
            ;;
        *)
            length=$(expr length $REPLY)
            echo "length:$length"
            exit 0
    esac
done

