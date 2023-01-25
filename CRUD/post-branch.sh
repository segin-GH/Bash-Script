#! /usr/bin/zsh


if [ -e version.txt ]; then
    echo "Version.txt file already Exists"
else
    echo "File does not Exists Creating.."
    touch version.txt
    echo "Created a file called version.txt"
fi

cur_branch=$(git rev-parse --abbrev-ref HEAD)

line_found=$(awk -v b="$cur_branch" '$0 ~ b { print NR }' version.txt)

echo $line_found

if [ -z "$line_found" ] ; then
    exit
else
    echo "some metadata available"
fi

cur_branch=$(git rev-parse --abbrev-ref HEAD)