#!/bin/bash

# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

[ -d "$1" ]

if [ $? -eq 0 ]
then
	echo "This is a Directory"
	ls -lh "$1"
fi

[ -f "$1" ]

if [ $? -eq 0 ]
then
	echo "This is a File"
	ls -lh "$1"
fi

[ -a "$1" ] || echo "File ${$1} Does Not Exist"
