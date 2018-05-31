#!/bin/bash

index=0
for i in `cut -f 1 -d : /etc/passwd`
do
    user[$index]=$i
    let index=$index+1
done

index=1
for name in ${user[*]}
#for name in ${user@*]}
#for name in "${user[*]}"
do
    echo "$index:$name"
    let index=$index+1
done

echo "${user[*]}"
user=([50]=zhang,dsa,dsa)
echo "${user[*]}"
exit 0
