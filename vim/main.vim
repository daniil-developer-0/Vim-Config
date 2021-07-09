" General
" =======

filetype plugin on	" Filetype plugins
filetype indent on	" Filetype plugins

set syntax =on      " Syntax highlighting
set bg =dark        " Default background color

let $LANG='en'      " Language
set langmenu=en     " Language in GUI
set history =500    " 500 lines to history (undo and redo)
set lazyredraw      " Don't redraw, when executing macros
set showmatch       " Show matching brackets
set wildmenu        " Turn on wildmenu (tab for autocompletion in menu)

" === Whitespaces ===
set list            " Show white characters
set lcs =tab:→\     " Tab character
set lcs +=space:·   " Space character
set lcs +=trail:.   " Trailing space (space in beginning or ending of line) character
set lcs +=extends:… " Line overflow character
set lcs +=eol:\     " End of line character

" === Search ===
set ignorecase		" Ignore case when searching
set smartcase		" Try to be smart, when searching
"set highlight		" Highlight results
set incsearch		" Search like in browsers

" === Backups ===
set nobackup		" No backup files
set nowb            " Write buffer to the original file
set noswapfile		" Now swap files

" === Tabs ===
set expandtab		" Use tabs instead of spaces
set shiftwidth =4	" How many columns of whitespace a \"level of indentation\" is worth
set tabstop =4		" Tab character (\t) width
set softtabstop =4  " Remove 4 characters when erasing tabs
set ai              " Copy indent from current line to the next, when pressing <CR>
set si              " Insert tab, when open a brackets, and delete a tab, when closing the brackets
