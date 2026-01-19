#!/bin/bash

echo "VSCode Back-Uperer"

# change to my backup location
cd $HOME/Documents/repos/Personal/vscode

# run the backup
/opt/homebrew/bin/code --list-extensions > VSfile
# remove and make a fresh copy of .vscode & User
rm -r .vscode
cp -R $HOME/Documents/repos/.vscode .
mkdir -p User
rm -r User/*
cp -R ~/Library/Application\ Support/Code/User/*.json User/

# add to git repo
git add .
git commit -m "Regular automated backup"
git push

# Backup extensions
#cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
