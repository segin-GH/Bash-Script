#! /usr/bin/zsh

# echo "What is your name?"

name=$1

user=$(whoami)
date=$(date)
yourdir=$(pwd)

echo "Good Morning $name !!"
sleep 1
echo "logged in as $user"
sleep 1
echo "Today is $date"
sleep 1
echo "your working dir is $yourdir"