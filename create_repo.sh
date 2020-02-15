#!/bin/zsh

function create() {
    python create.py $1
    cd /Users/kimlangholz/Projects/Flutter/
    flutter create $1
    cd /Users/kimlangholz/Projects/Flutter/$1
    git init
    git remote add origin git@github.com:kimlangholz/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
    code .
}

cd "$(dirname "$0")" || exit

create $1