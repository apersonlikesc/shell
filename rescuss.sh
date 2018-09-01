#!/bin/bash

recursive()
{
    
    if [ $1 -eq 1 ]
    then
        echo 1
        return 0
    fi

    local TEMP=`expr $1 - 1`

    local PREVIOUS=`recursive $TEMP`

    RESULT=`expr $1 \* $PREVIOUS`

    echo $RESULT

    return 0
}


echo -n "输入数字:"
read INPUT
until [ "$INPUT" = "quit" ]
do
    case $INPUT in
        [1-9]|[1][0-9]|20)
            OUTCOME=`recursive "$INPUT"`
            echo "After computing $INPUT >>> $OUTCOME"
            echo
            ;;
    *)
        echo "不符合要求"
        ;;
     esac
     echo "输入数字:"
     read INPUT
done



