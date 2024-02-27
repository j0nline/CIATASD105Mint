#!/bin/bash

echo "Enter file name:"

read filename

if test -f "$filename"; then

echo "Enter test to search for:"

read search_text

echo "Enter text to replace with:"

read replace_text

sed -i "s/$search_text/$replace_text/g" "$filename"

echo "The text has been replaced"

else

echo "The $filename does not exist"

fi
