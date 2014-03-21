" uses vim settings instead of vi, supposed to be way awesome
set nocompatible

" use utf-8
set encoding=utf-8

" use "jj" to escape insert mode
inoremap jj <ESC>

" show line numbers
set nu

" Show cursor position and document progression
set ruler

" highlight cursor line.
" doing `set cursorcolumn` will highlight the cursor's column, which may be
" helpful too.
set cursorline

" use 2 spaces for tabs
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent

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

" Hide files matching certain patterns in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Normal backspace behaviour
set backspace=2

" set the emmet trigger key
let g:user_emmet_leader_key='<C-e>'

" airline should use powerline symbols
let g:airline_powerline_fonts = 1

" close vim if the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Always show the statusline
set laststatus=2

" ignore certain directories in ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Show trailing whitespace with the same syntax hilighting as an error message
match ErrorMsg '\s\+$'

" Key binding to remove trailing whitespace at the end of lines
nnoremap <Leader>rtw :%s/\s\+$//e<CR>

" if there is a readable vimrc.local, use it
let g:vimrc_local = $HOME . '/.vimrc.local'
if filereadable(vimrc_local)
  exec "source ". g:vimrc_local
endif
