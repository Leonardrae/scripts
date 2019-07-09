#!/bin/bash

# Modify the previous script to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable.

for PATHS in $@
do
[ -d "$PATHS" ]

if [ $? -eq 0 ]
then
	echo "This is a Directory"
	ls -lh "$PATHS"
fi

[ -f "$PATHS" ]

if [ $? -eq 0 ]
then
	echo "This is a File"
	ls -lh "$PATHS"
fi

[ -a "$PATHS" ] || echo "File ${PATHS} Does Not Exist"
done
