#!/bin/bash

if [ $# -eq 0 ]
then
    echo "输入文件名a"
    exit 1
fi

for file in $@
do
    if [ -f $file -a -r $file -a -s $file ]
    then
        echo "$file:"
        awk '
        /.*/{ total_lines += 1; }
        /^ *$/{ empty_lines += 1;next; }
        /^ *#.*$/{ comment_lines += 1; }
        END{
            printf "total:%d" , total_lines;
            printf "\ncomment:%d" , comment_lines;
            printf "\nempty:%d" , empty_lines;
        }
        ' $file
    else
        echo "$file 不能被处理"
    fi
done

echo "Done"
exit 0

