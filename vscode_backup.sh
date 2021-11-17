#!/bin/bash

echo "VSCode Back-Uperer"

# change to my backup location
cd $HOME/Documents/VSCode

# run the backup
/usr/local/bin/code --list-extensions > VSfile
# remove and make a fresh copy of .vscode
rm -r .vscode
cp -R $HOME/Documents/repos/.vscode .

# add to git repo
git add .
git commit -m "Regular automated backup"
git push

# Backup extensions
#cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
