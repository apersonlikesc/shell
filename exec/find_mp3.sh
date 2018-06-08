#!/bin/bash

mkdir /tmp/songs

if [ $? -eq 0 ]
then
    find ~ -name "*.mp3" -print -exec mv '{}' /tmp/songs \;
fi

echo "将所有的mp3都移动到了/tmp/songs下"

exit 0
