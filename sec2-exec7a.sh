#!/bin/bash

# Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

[ -e "$1" ] || echo "Path ${1} does not exist"
[ -d "$1" ] && echo "Path is a Directory" && ls -hl ${1}
[ -f "$1" ] && echo "Path is a File" && ls -hl ${1}
