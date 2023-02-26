#!/bin/bash
#author: heloowird

echo "# step1: backup the old config"
backup_timestamp=$(date +%s)
if [ -f ~/.vimrc ]
then
    cp ~/.vimrc ~/.vimrc.bak.${backup_timestamp}
fi
if [ -d ~/.vim ]
then
    cp -r ~/.vim ~/.vim.bak.${backup_timestamp}
fi

echo "# step2: copy the new config"
cp -f vimrc ~/.vimrc && cp -r vim ~/.vim
if [ $? -eq 0 ]
then
    echo ' configure vim successfully!'
fi

