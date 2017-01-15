" Note: Skip initialization for vim-tiny or vim-small.
" To install NeoBundle:
"   curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
"   sh ./install.sh

if 0 | endif

if &compatible
  set nocompatible
endif

" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

  " Let NeoBundle manage NeoBundle
  NeoBundleFetch 'Shougo/neobundle.vim'

  " My Bundles here:
  " Refer to |:NeoBundle-examples|.
  " Note: You don't set neobundle setting in .gvimrc!

  NeoBundle 'dhruvasagar/vim-table-mode'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

filetype indent plugin on
syntax on

colorscheme random

set ff=unix
set encoding=utf-8

set backspace=indent,eol,start
set confirm

set autoindent
set expandtab
set smartindent
set softtabstop=2
set tabstop=2

set grepprg=grep\ -nH\ $*
set hidden
set history=1000
set iskeyword+=:
set ignorecase
set laststatus=2
set list listchars=tab:»\ ,trail:.,extends:>,precedes:<
set noro
set nostartofline
set number
set ruler
set shellslash
set shiftwidth=2
set smartcase
set title
set visualbell
set wildmenu
set wildmode=list:longest

let g:tex_flavor='latex'

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

