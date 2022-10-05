#!/bin/bash

printHelp() {
	echo "Usage: ./bulkrename.sh -f '"find"' -r '"replace""
 	echo "-f The text to find in the filenames"
 	echo "-r The replacement text for the new filenames"
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

for item in *
do
	mv "$item" "$(echo "$item" | sed -e s/$find_text/$replacement_text/g)"
done
