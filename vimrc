set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" python autocompletion
Plugin 'davidhalter/jedi-vim'
" syntax checker 
Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax enable
syntax on

" tab configuration
set expandtab
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
"set ai
" " set cindent shiftwidth=2

set noerrorbells

set hlsearch
"set backspace=indent,eol,start
"set encoding=chinese
"set langmenu=zh_CN.GBK
set imcmdline
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"set number
colorscheme desert

"set fileencodings=utf-8,gb2312,gbk,gb18030
"set termencoding=utf-8
"set fileformats=unix
"set encoding=prc
"set noai
set nu!

autocmd BufNewFile *.sh 0r ~/.vim/template/shell/shellconfig.sh
autocmd BufNewFile *.py 0r ~/.vim/template/python/pythonconfig.py
au BufNewFile,BufRead *.hql set filetype=hive expandtab
