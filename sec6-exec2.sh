#!/bin/bash

CURR=$(date +%Y-%m-%d)
read -p "Please enter a file extension: " EXT
if [ -z ${EXT} ]
then 
	echo "INVALID INPUT"
	exit 1
else
	FILE=$(ls *.${EXT}) 
fi

read -p "Please enter a file prefix(Press ENTER for ${CURR}): " PREFIX
[ -z ${PREFIX} ] && PREFIX=${CURR}

for FILES in $FILE
do
	echo "Renaming ${FILES} to ${PREFIX}-${FILES}"
	mv ${FILES} ${PREFIX}-${FILES}
done
