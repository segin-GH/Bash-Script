#! /usr/bin/zsh

func_read_from_file(){
    while read line; do
        branch_name=$(echo $line | awk '{print $1}')
        if git show-branch $branch_name; then
            echo "Branch $branch_name is available"
        else
            echo "Branch $branch_name is not available"
            sed -i "/$branch_name/d" version.txt
        fi
    done < version.txt
}


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
fi

func_read_from_file