#! /bin/bash

# while loops
number=1
while [ $number -lt 10 ] # while the statement is true, do the following
do
	echo "$number"
	number=$(( number+1 ))
done


#Vs DO something UNTIL the statement becomes true
num=1
until [ $num -ge 10 ]
do
	echo $num
	num=$(( num+1  ))
done


# FOR loops
for i in 1 2 3 4 5 #iterating through a collection
do
	echo $i
done


for i in {0..20} #iterating through a range
do
	echo $i
done


for i in {0..20..4} #iterating through range with STEPS of 4
do
        echo $i
done


#alternate method (C++)
for (( i=0; i<5; i++ ))
do
        echo $i
done
