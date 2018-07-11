"COMMANDS#########################################################################

" display line number
set number 

" show the cursor position
set ruler

" show parts of the text in another font or color
syntax on

" indent for supported languages
filetype indent plugin on 

" allows switching between buffers without saving
set hidden 

" pretty tab autocompletion
set wildmenu 

" increment search
set is 

" highlight all search pattern matches
set hls 

" show (partial) command in the last line of the screen.
set showcmd

" keep cursor centered vertically on the screen
set scrolloff=5

" use colors that look good with black background 
set bg=dark

" set colorscheme
color ron

"BACKUP_FILES####################################################################

" store backups of files
set backup

" directory to store backup files
set backupdir=/home/slarty/.vim/backup

" directory to store .swp and other files
set directory=/home/slarty/.vim/swap

"MACROS##########################################################################


"GARBAGE#########################################################################

" indentation
"  set autoindent
"  set cindent
"  inoremap { {<CR>}<up><end><CR>
