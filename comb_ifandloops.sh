
#! /bin/bash

for (( i=0; i<5; i++ ))  # continue up to i<5
do
	if [ $i -gt 3 ] # condition to break if i greater than 3
	then
		break
	fi
        echo $i
done
