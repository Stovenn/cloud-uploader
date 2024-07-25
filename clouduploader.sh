#!/bin/bash


FILE_PATH=$1

if [ ! -f $FILE_PATH ]; then
echo $FILE_PATH does not exists
exit 1
fi

echo $FILE_PATH exists