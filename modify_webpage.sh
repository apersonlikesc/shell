#!/bin/bash

for file in $@
do
    echo ".............doing......."
    sed 's/abc/ABC/g' "$file" > $file.$$
    if [ -f $file.$$ ]
    then
        mv -f $file.$$ $file
    fi
done

echo "done"

exit 0
