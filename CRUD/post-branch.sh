#! /usr/bin/zsh


if [ -e version.txt ]; then
    echo "Version.txt file already Exists"
else
    echo "File does not Exists Creating.."
    touch version.txt
    echo "Created a file called version.txt"
fi

cur_branch=$(git rev-parse --abbrev-ref HEAD)

line_found=$(awk '$cur_branch { print NR }' version.txt)

if [ $line_found > 1 ]; then
    echo "some metadata available"
else
    exit
fi

cur_branch=$(git rev-parse --abbrev-ref HEAD)