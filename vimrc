" uses vim settings instead of vi, supposed to be way awesome
set nocompatible

" show line numbers
set nu

" highlight cursor line.
" doing `set cursorcolumn` will highlight the cursor's column, which may be
" helpful too.
set cursorline

" use 2 spaces for tabs
set tabstop=2
set expandtab
set shiftwidth=2
syntax on

" use 80 char text width
" highlight the 80th column
"
" select text to be wrapped and hit 'gq' to wrap to textwidth
set textwidth=79
set colorcolumn=80

" keep 3 lines between the cursor and the bottom/top of the screen when
" possible
set scrolloff=3


" this is for pathogen and it's bundles
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" use solarized dark
se t_Co=256
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized


" some options for NERDCommenter
let NERDSpaceDelims=1

if match($TERM, "screen")!=-1
  set term=xterm-256color
endif

" open NERDTree automatically at start
autocmd vimenter * if !argc() | NERDTree | endif

" close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
