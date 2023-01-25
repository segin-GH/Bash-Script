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

# echo $line_found

ver_num=0

if [ -z "$line_found" ]; then
    printf "$cur_branch $ver_num \n" > version.txt.tmp
    cat version.txt >> version.txt.tmp
    mv version.txt.tmp version.txt

else
    
fi

cur_branch=$(git rev-parse --abbrev-ref HEAD)