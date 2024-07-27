#!/bin/bash

FILE_PATH=$1
CONTAINER_NAME=$2

if [ ! -f $FILE_PATH ]; then
    echo $FILE_PATH not found
    exit 1
fi

az storage blob upload -f $FILE_PATH -c $CONTAINER_NAME
if [ $? -eq 0 ]; then
    echo File successfully upload to $CONTAINER_NAME
else
    echo Error while uploading the file
fi