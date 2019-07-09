#!/bin/bash

# Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or other type of file. Also perform an ls command against the file or directory with the long listing option.

read -p "Give me a PATH: " input 

[ -d "$input" ]

if [ $? -eq 0 ]
then
	echo "This is a Directory"
	ls -lh "$input"
fi

[ -f "$input" ]

if [ $? -eq 0 ]
then
	echo "This is a File"
	ls -lh "$input"
fi

[ -a "$input" ] || echo "File ${input} Does Not Exist"
