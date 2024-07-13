" Show if insert mode or not.
set showmode

" Enable TrueColor.
set termguicolors

" Do not hilighting when searching.
set nohlsearch

" Auto code indent when CR.
set autoindent

" Tab to 4 whitespace.
set tabstop=4
set expandtab

" Set hilighting.
syntax on

" Abbreviations.
abbr _sh #!/bin/bash

" Set a non-blinking vertical bar cursor for insert mode.
let &t_SI .= "\e[6 q"
" " Set a non-blinking block cursor for normal mode.
let &t_EI .= "\e[2 q"

