#!/bin/bash

echo "Enter a file name:"

read filename

if test -e "$filename";then

echo "The file $filename exists"

else

echo "the file $filename does not exists"

fi
