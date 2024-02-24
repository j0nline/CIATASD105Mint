#!/bin/bash

echo "Enter the file name:"

read filename

if test -f "$filename";then

echo "The contents of $filename is:"

cat "$filename"

else

echo "the file $filename does not exists"

fi
