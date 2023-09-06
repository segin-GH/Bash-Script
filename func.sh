#! /usr/bin/zsh

git_commit() {
    if [ -z "$1" ]; then
        echo "No file to commit baka! :("
        return 1
    fi

    if [ -z "$2" ]; then
        echo "No commit message baka! :("
        return 1
    fi

    echo "Committing $1 with message $2 :)"
    git commit "$1" -m "$2"
    return 0
}
