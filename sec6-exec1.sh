#!/bin/bash

shopt -s nullglob
JPEG=$(ls *.jpg)
DATE=$(date +%Y-%m-%d)
shopt -u nullglob

for PICTURE in $JPEG
do
	echo "Renaming ${PICTURE} to ${DATE}-${PICTURE}"
	mv ${PICTURE} ${DATE}-${PICTURE}
done  
