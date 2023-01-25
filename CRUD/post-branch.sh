#! /usr/bin/zsh


if [ -e version.txt ]; then
    echo "Version.txt file already Exists"
else
    echo "File does not Exists Creating.."
    touch version.txt
    echo "Created a file called version.txt"
fi
