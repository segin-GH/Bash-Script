# #! /usr/bin/zsh

# func_read_from_file(){
#     while read line; do
#     printf '%s\n' "$line" 
#     done < version.txt
# }

# echo "=================================================="

# echo "Triggerd HOOk"
# if [ -e version.txt ]; then
#     # echo "Version.txt file already Exists"
# else
#     # echo "File does not Exists Creating.."
#     touch version.txt
#     # echo "Created a file called version.txt"
# fi

# # get current branch name
cur_branch=$(git rev-parse --abbrev-ref HEAD)

# # check for metadata
# line_found=$(awk -v b="$cur_branch" '$0 ~ b { print NR }' version.txt)

# # echo "$line_found line found"
# cur_version=$(awk -v l="$line_found" 'NR==l { print $2; exit }' version.txt)

# # echo "$cur_version"
# cur_version=$(($cur_version + 1))

# # echo "$cur_version"
# sed -i "$line_found s/.*/$(echo $cur_branch | sed 's/\//\\\//g') $cur_version/" version.txt



# if [ "$(tail -c 1 version.txt)" != "" ]; then
#     echo "" >> version.txt
# fi


# func_read_from_file 

function add_cur_version_to_file () {
    
    to_find="cur_version"
    line_found=$(awk -v b="$to_find" '$0 ~ b { print NR }' app_main.h)
    # echo $line_found 
    if [ $line_found != 0 ]; then
        cur_version=10
        sed -i "$line_found s/.*/$(echo \#define cur_version \"$cur_branch | sed 's/\//\\\//g') $cur_version\"/" app_main.h
    fi
}

# echo "=================================================="