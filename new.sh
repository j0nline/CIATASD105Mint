#! /bin/bash

#prompt for name of new script
echo "what name for the script? (skip .sh)"
read SCRIPT_NAME

# create file, add extesnion and shebang line
echo "#!/binbash" > "${SCRIPT_NAME}.sh"

#make executable
chmod +x "${SCRIPT_NAME}.sh"

echo "${SCRIPT_NAME}.sh ready to execute!Want to edit in nano?"
read OPEN_ANSWER

if [[ $OPEN_ANSWER =~ ^[Yy]$ ]]; then
	nano "${SCRIPT_NAME}.sh"
fi
