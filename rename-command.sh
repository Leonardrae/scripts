#!/bin/bash

FILES=$(ls exec*.sh)

for FILE in $FILES
do
	echo "Renaming ${FILE} to sec${1}-${FILE}"
	mv ${FILE} sec${1}-${FILE}
done
