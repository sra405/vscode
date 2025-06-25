#!/bin/bash

echo "VSCode Restorer-erer"

# change to my backup location
cd $HOME/Documents/repos/Personal/vscode

# Restore the config
cp -R .vscode $HOME/Documents/repos

# Restore extensions
cat VSfile | while read line; do /opt/homebrew/bin/code --install-extension "$line"; done
