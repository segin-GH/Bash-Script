#! /usr/bin/zsh

getrich=$(($RANDOM % 14))

echo "What is your name"

read name

echo "what is your age"

read age

echo "Hello, $name, your are $age years old."

echo "you are going to get rich at $(($age + $getrich))"