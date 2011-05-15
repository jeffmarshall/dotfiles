" uses vim settings instead of vi, supposed to be way awesome
set nocompatible

" show line numbers
set nu

" use 2 spaces for tabs
set tabstop=2
set expandtab
syntax on

" this is for pathogen and it's bundles
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" use solarized dark
colorscheme solarized
set background=dark
