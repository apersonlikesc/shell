#!/bin/bash

awk '
BEGIN{
FS=":";
}

NR%2==0{
print NR,$0;
}
' "/etc/passwd"
exit 0
