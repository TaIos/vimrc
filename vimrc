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
"set backup

" Directory to store backup files, with exist&create check
let bk_file=$HOME.'/.vimrc_dir/backup'
if !isdirectory(bk_file)
	call mkdir(bk_file, 'p')
endif
let &backupdir=bk_file

" Directory to store .swp and other files, with exist$&create check
let swp_file=$HOME.'/.vimrc_dir/swap'
if !isdirectory(swp_file)
	call mkdir(swp_file, 'p')
endif
let &directory=swp_file

"MACROS##########################################################################

"MAP#############################################################################

" Write, quit, override in [command mode]
map <F1> :wq!<CR>

" Write, quit, override in [insert mode]
imap <F1> <Esc>:wq!<CR>

" Write current file, override in [command mode]
map <F2> :w!<CR>

" Write current file, override in [insert mode]
imap <F2> <Esc>:w!<CR>

" Creates basic C++ bone (like "Hello world" but without it)
map <leader>c i#include <iostream><CR><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}<CR><Esc>3ki<Esc>

" Insert python3 hash-bang
map <Insert> ggO#!/bin/python3<CR><Esc>

" Insert Python"s guard: if __name__ == "__main__"
map <Del> 0iif __name__ == "__main__":<Esc>omain()<CR><Esc>

" Insert Java's 'System.out.println('
map <leader>p oSystem.out.println(

" Insert semicolon at the end of line
map <leader>; A;<Esc>

" Insert timestamp variable
map <leader>t oTIMESTAMP=$(date +%Y-%m-%d.%H%M)<Esc>j0

"GARBAGE#########################################################################

" Indentation
"  set autoindent
"  set cindent
"  inoremap { {<CR>}<up><end><CR>
