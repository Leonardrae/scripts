#!/bin/bash

function file_count() {
	local DIR=$(pwd)
	local LINES=$(ls $DIR | wc -l)
	local WORDS=$(ls $DIR | wc -w)
	local BYTES=$(ls $DIR | wc -c)
	echo "The directory $DIR consist of:"
	echo "$LINES lines"
	echo "$WORDS words"
	echo "$BYTES bytes"
}

file_count  
