" Set up Vundle "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins go here "
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

call vundle#end() 
" Plugins end here "

" Adds line numbers "
set number

" Adds syntax highlighting "
syntax on
filetype indent plugin on

" Sets tab options "
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
