#!/bin/bash

ls -l | awk '
($1 ~ /^-/) && ($6 == "2012-12-29")
{
    printf "%-15s %s\n",$8,$5;
    sum += $5;
}

END{
    print "--------"
    print "sum is",sum;

}
'

exit 0
