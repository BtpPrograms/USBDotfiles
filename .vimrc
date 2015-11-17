" Set up Vundle 
set nocompatible
filetype plugin indent off
syntax off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Installed Bundles 
Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'tpope/vim-fugitive'
Plugin 'klen/python-mode'
Plugin 'tmhedberg/SimpylFold'

call vundle#end()

" Reenable plugins once done with Vundle 
filetype plugin indent on
syntax on

" Show Line Numbers  
set number

" Toggle Paste Mode
set pastetoggle=<s>

" Various Tab Related Options
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

" Set Leader Key to , "
let mapleader=","

" Place line on current location of cursor "
set cursorline

" Set up Powerline 
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

" Map keys to move between splits "
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Add Arduino syntax file "
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

"Python - Setup 
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Set up lint configuration and set line length of 120
let g:pymode_lint_config = '$HOME/.pylint.rc'
let g:pymode_options_max_line_length=120

" Set up column to match line length of 120
autocmd FileType python set colorcolumn=120

" Change background color of color column 
highlight ColorColumn ctermbg=241

" Don't autofold code
let g:pymode_folding = 0

" Change background color of fold
highlight Folded ctermbg=241
