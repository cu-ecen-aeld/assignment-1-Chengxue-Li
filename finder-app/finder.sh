#!/usr/bin/bash

# check 2 args
if [ $# -lt 2 ]
then
    echo "No enough args"
    exit 1
fi

# get directory and keyword from args
dir="$1"
keyword="$2"

# check if directory exists
if [ ! -d "$dir" ]
then
    echo "No such dir"
    exit 1
fi

file_cnt=0
total=0

# traverse all files
for file in $(find "$dir" -type f)
do
    # count files
    ((file_cnt++))
    # count lines
    cnt=$(grep -c "$keyword" "$file")
    ((total+=cnt))
done
echo "The number of files are $file_cnt and the number of matching lines are $total"