#!/bin/bash

echo "Enter the firrst string"
read str1

echo "Enter second string"
read str2

if [ $str1 == $str2 ]
then
	echo "strings are the same"
else
	echo "strings are different"
fi
