#!/bin/bash

projectPath='/Users/kimlangholz/Projects/Flutter/'
gitHubUsername='kimlangholz'

function create() {
    python create.py $1
    cd ${projectPath}
    flutter create $1
    cd ${projectPath}$1
    git init
    git remote add origin git@github.com:${gitHubUsername}/$1.git
    git add .
    git commit -m "Initial commit"
    git push -u origin master
}

cd "$(dirname "$0")" || exit

create $1