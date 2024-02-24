#!/bin/bash

echo "Enter a directory name:"

read dirname

if test -d "$dirname";then

echo "The directory $dirname already exists"

else

mkdir "$dirname"

echo "the directory $dirname has been created"

fi
