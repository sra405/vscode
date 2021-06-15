#!/bin/bash

echo "VSCode Back-Uperer"

# change to my backup location
cd /Users/scottadams/Documents/VSCode

# run the backup
/usr/local/bin/code --list-extensions > VSfile
# remove and make a fresh copy of .vscode
rm -r .vscode
cp -R /Users/scottadams/Documents/repos/.vscode .

# add to git repo
git add .
git commit -m "Regular automated backup"
git push
