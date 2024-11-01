#!/bin/bash
#author: heloowird
#
set -eo pipefail

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

echo "# step3: clone Vundle to install plugin"
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "# step4: install vim plugin"
vim +PluginInstall +qall

if [ $? -eq 0 ]
then
    echo ' configure vim successfully!'
fi

