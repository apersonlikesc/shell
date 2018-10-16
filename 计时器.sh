

if [ -n "$1" ]
then
    for((i=0;i<$1;i++))
    do
        sleep 1
        echo -ne "$i\r"
    done
    echo "done"
else
    echo "默认1小时"
    for((i=0;i<3600;i++))
    do
        sleep 1
        echo -ne "$i\r"
    done
    echo "done"
fi
