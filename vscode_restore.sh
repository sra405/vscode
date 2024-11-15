#!/bin/bash

echo "VSCode Restorer-erer"

# change to my backup location
cd $HOME/Documents/repos/Personal/vscode

# run the backup
# /usr/local/bin/code --list-extensions > VSfile
# remove and make a fresh copy of .vscode
#mkdir -p $HOME/Documents/repos/.vscode
cp -R .vscode $HOME/Documents/repos

# add to git repo
#git add .
#git commit -m "Regular automated backup"
#git push

# Restore extensions
cat VSfile | while read line; do /usr/local/bin/code --install-extension "$line"; done
