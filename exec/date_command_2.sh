#!/bin/bash

echo "今天是$(date +%Y-%m-%d)"

day=$(date +%j)

echo "距离明年还有$((365 - day))天,共$(($((365 - day)) / 7))周,已经过了`expr $day / 7`周了"
exit 0


