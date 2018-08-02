"VARIABLES########################################################################

" Set leaderkey
let mapleader='\'

"COMMANDS#########################################################################

" Turn on line numbering
set number

" Show the line and column number of the cursor position
set ruler

" Show parts of the text in another font or color
syntax on

" Indent for supported languages
filetype indent plugin on 

" Allows switching between buffers without saving
" (once a buffer is loaded into memory, it stays in memory)	
set hidden 

" Display completion matches on status line
set wildmenu 

" Enable incremental searching
set incsearch

" Disable highlight search matches
set nohlsearch

" Display the incomplete commands in the bottom right-hand side of screen
set showcmd

" Show a few lines of context around the cursor
set scrolloff=5

" Use colors that look good with black background 
set bg=dark

" Specifiy a color scheme
color ron

" Make a tab equal to 4 spaces
set shiftwidth=4
set tabstop=4

"BACKUP_FILES####################################################################

" Turn on file backups
set backup

" Directory to store backup files
set backupdir=/home/slarty/.vim/backup

" Directory to store .swp and other files
set directory=/home/slarty/.vim/swap

"MACROS##########################################################################

"MAP#############################################################################

" Creates basic C++ bone (like "Hello world" but without it)
map <F2> i#include <iostream><CR><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}<CR><Esc>3ki<Esc>

" Insert python3 hash-bang
map <Insert> ggO#!/bin/python3<CR><Esc>

" Insert Python"s guard: if __name__ == "__main__"
map <Del> 0iif __name__ == "__main__":<Esc>omain()<CR><Esc>

" Insert Java's 'System.out.println('
map <leader>p oSystem.out.println(

" Insert semicolon at the end of line
map <leader>; A;<Esc>

"GARBAGE#########################################################################

" Indentation
"  set autoindent
"  set cindent
"  inoremap { {<CR>}<up><end><CR>
