#!/bin/bash

awk -F: '
    $7 == "bin/bash" {print $1;next;}
    $3 >= 1000 {print $1;}
' /etc/passwd
