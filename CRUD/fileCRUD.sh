#! /usr/bin/zsh


if [ -e version.txt ]; then
    echo "Version.txt file already Exists"
else
    echo "File does not Exists Creating.."
    touch version.txt
    echo "Created a file called version.txt"
fi

# get current branch name
cur_branch=$(git rev-parse --abbrev-ref HEAD)

# check for metadata
line_found=$(awk '$cur_branch { print NR }' file.txt)

echo "$line_found"

cur_version=$(awk -v l="$line_found" 'NR==l { print $2; exit }' version.txt)

echo "$cur_version"

cur_version=$(($cur_version + 1))

echo "$cur_version"



