" 
filetype indent plugin on
syntax on

" Choose a random color scheme
colorscheme random

" File format: Unix, enforces \n line endings
set ff=unix

" Choose character set
set encoding=utf-8

" Length of tabs
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2
set number
set backspace=indent,eol,start
set list listchars=tab:»\ ,trail:.,extends:>,precedes:<
set ignorecase
set smartcase
set nostartofline
set autoindent
set ruler
set laststatus=2
set confirm
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:

vnoremap // y/<C-R>"<CR>

augroup filetype
  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex
augroup END
au Syntax jflex    so ~/.vim/syntax/jflex.vim

" Stop inserting placeholders in my LaTeX files
let g:Imap_UsePlaceHolders = 0

call pathogen#infect()

" Delete .vim/netrwhist, it's trying to keep track of changes in .vim/
au VimLeave * if filereadable("[path here]/.netrwhist")|call delete("[path here]/.netrwhist")|endif 
