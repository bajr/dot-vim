" Bradley Rasmussen 2017
" A hacky but functional vim config.
" Dependencies: neobundle, pathogen, my git repo

" Skip initialization for vim-tiny or vim-small.
if 0 | endif
if &compatible
  set nocompatible
endif

"** NeoBundle Set Up **"
set runtimepath^=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
" Installed bundles
NeoBundle 'dhruvasagar/vim-table-mode'
call neobundle#end()
" If there are uninstalled bundles, prompt to install them.
NeoBundleCheck

"** Syntax Hilighting **"
filetype indent plugin on " enable filetype detection and handling
syntax on
colorscheme random " A different color scheme every time
set t_Co=256 " Set 256 colors
set iskeyword+=: " Set ':' to be a keyword for forgotten reasons

"** LaTeX **"
" Stop inserting placeholders in my LaTeX files
let g:Imap_UsePlaceHolders = 0
let g:tex_flavor='latex'

"** File Formatting **"
set ff=unix
set encoding=utf-8
" set fileencoding=latin1 " How vim encodes a file. Best not to muck with this.

"** Indentation **"
set autoindent expandtab smartindent softtabstop=2 tabstop=2 shiftwidth=2
" Todo: Insert some logic to handle utf-8
set list listchars=tab:»\ ,trail:.,extends:>,precedes:<,nbsp:_ " Enable list mode and set invisible characters

"** Searching & History **"
set history=1000 " History of ':' and search commands
set ignorecase smartcase " Semi-case-insensitive searching
" Search for literal visual selection with '//'
vnoremap <expr> // 'y/\V'.escape(@",'\').'<CR>'

"** Usability **"
set backspace=indent,eol,start
set confirm
set wildmenu wildmode=list:longest

"** Status Information **"
set laststatus=2 " Always show status line
set title
"set titlelen= titlestring=
set number " Show row numbers
set ruler rulerformat=c:%-.9(%c%V%)\ r:%-(%-.6(%l%)/%-.6(%L%)%)
" set statusline=

"** Shelling Out **"
set grepprg=grep\ -nH\ $* " Use grep for :grep
set shell=bash shellslash

"** Miscellaneous **"
set hidden " Hide buffers instead of unloading them
set nostartofline " Don't move cursor to start of line when navigating
set visualbell

" Playing around
"fu TabDepth()
"  let TabLevel = ( col( '.' ) - 1 ) / &ts
"  if ( ( TabLevel * &ts + 1 ) != col( '.' ) )
"    let TabLevel = '*'
"  endif
"  return TabLevel
"endf
