#! /bin/bash

#example of conditional statements

count=8

if [ $count -eq 10 ] # -eq means equal or =, -gt means greater than or >, -lte means EQUAL and less than 0r =>, -ne not equal etc.
then
	echo "the condition is true"
elif [ $count -lt 9 ]
then
	echo "the condition is still true"
else
	echo "the condition is false"
fi

: 'or
count=10 	#here you can use <,>,=,=<,=> etc.

if (( $count > 9))
then
	echo "the condition is true"
fi'
