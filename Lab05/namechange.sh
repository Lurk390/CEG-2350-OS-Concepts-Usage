#!/bin/bash

printHelp() {
	echo "Usage: ./namechange.sh -f '"find"' -r '"replace"' '"file to modify"'"
 	echo "-f The text to find in the filename"
 	echo "-r The replacement text for the new filename"
}

while getopts ":hf:r:" opt; do
	case $opt in
	h)
		printHelp
		exit
		;;
	f)	
		find_text=$OPTARG
		;;
	r) 	
		replacement_text=$OPTARG
		;;
	\?)	
		# Default case
      	echo "Invalid option: -$OPTARG" >&2
      	;;
	esac
done

shift $((OPTIND-1))
filename=$@

# check if file is valid (if file exists, then execute, else print error and help guide)
if [[ -e $filename ]]
then
	mv "$filename" "$(echo "$filename" | sed -e s/$find_text/$replacement_text/g)"
else
	echo "User must provide valid filename"
	printHelp
fi
