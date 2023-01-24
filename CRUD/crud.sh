#! /usr/bin/zsh

function func_read_from_file(){
    while read line; do
    echo $line
    done < file.txt
}

if [ -e file.txt ]; then
    echo "file Exists"
else
    echo "File does not Exists Creating.."
    touch file.txt
    echo "Created a file called file.txt"
fi

# prints to a file
printf "This is line 1 \n" > file.txt
printf "This is line 2 \n" >> file.txt
printf "This is line 3 \n" >> file.txt


# calling a function
func_read_from_file

# using the sed operator
sed -i 's/line/LINE/g' file.txt

func_read_from_file

# using awk cmd
num=$(awk 'END{ print NR }' file.txt)
echo "the number of line in file.txt is $num"