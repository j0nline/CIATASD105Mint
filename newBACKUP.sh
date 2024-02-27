#!/bin/bash

#prompt for name of new script
echo "what name for the file?"
read FILE_NAME

#check if filename ends with .sh
if [[ $FILE_NAME == *.sh ]]; then

	# create file, add extesnion and shebang line
	echo "#!/bin/bash" > "$FILE_NAME"

	#make executable
	chmod +x "$FILE_NAME"


	echo "$FILE_NAME ready! Want to edit in nano?"
	read OPEN_ANSWER

	if [[ $OPEN_ANSWER =~ ^[Yy]$ ]]; then
        	nano "$FILE_NAME"
        fi
else
	touch "$FILE_NAME"

	echo "$FILE_NAME ready! Want to edit in nano?"
	read OPEN_ANSWER

	if [[ $OPEN_ANSWER =~ ^[Yy]$ ]]; then
		nano "$FILE_NAME"
	fi
fi
