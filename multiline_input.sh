#! /bin/bash

# this is an example of inputting information from the command line

: 'the code below will overwrite the file each time it is run
cat > multi_output.txt
use the code below to append additional lines to file'

#this next line outputs to te terminal using delimiters

cat << delim
line1
line2
line3
delim
