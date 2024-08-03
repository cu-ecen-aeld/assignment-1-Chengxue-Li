#!/usr/bin/bash

# check 2 args
if [ $# -lt 2 ]
then
    echo "No enough args"
    exit 1
fi

# get filename and text from args
filename="$1"
text="$2"

# write text to the file, exit with error code 1 if any error
echo "$text" > "$filename" || {
    echo "Cannot write text to file"
    exit 1
}
