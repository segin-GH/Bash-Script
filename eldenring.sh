#! /usr/bin/zsh

beastNum=$(($RANDOM % 2))

echo "Enter a num btw 0/1"
read num


if [[ $beastNum == $num ]]; then
    echo "you win"
else
    echo "you lost"
fi