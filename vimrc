" Coded with love by daniilshilo-developer ❤️

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


" Hotkeys
" =======
let mapleader = ";"	" Extra key

" === Fast save ===
nmap <leader>w :w!<CR>

" === Search ===
map <space> /|      " Search
map <C-space> ?|    " Backward search

" === Moving throw splits ===
map <C-j> <C-W>j|   " Move to the bottom split
map <C-k> <C-W>k|   " Move to the top split
map <C-h> <C-W>h|   " Move to the left split
map <C-l> <C-W>l|   " Move to the right split

" === Tabs ===
map <leader>tn :tabnew<CR>|  " New tab
map <leader>to :tabonly<CR>| " Close all tabs, but only one
map <leader>tc :tabclose<CR>|" Close the tab
map <leader>t, :tabprev<CR>| " Previous tab
map <leader>t. :tabnext<CR>| " Next tab

" === Buffers ===
map <leader>b, :prev<CR>     " Previous buffer
map <leader>b. :ne<CR>       " Next buffer
map <leader>bl :buffers<CR>  " List buffers

" === (COC) GoTo code navigation ===
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" === Coded with love by me) ===
nmap <silent> <leader>c ICoded with love by daniilshilo-developer ❤️<ESC>

" Plugins
" =======
call plug#begin('~/.vim/plugged')
" === Snippets ===
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" === Language Server ===
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" === Theme ===
Plug 'joshdick/onedark.vim'
" ==== Documentation ===
Plug 'heavenshell/vim-jsdoc', {'for': ['javascript', 'javascript.jsx','typescript'], 'do': 'make install'}
" === Comments ===
Plug 'tpope/vim-commentary'
call plug#end()

" === Coc Settings ===
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-emmet', 'coc-css', 'coc-tsserver', 'coc-snippets', 'coc-prettier']

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

nnoremap <silent><leader>f :CocCommand prettier.formatFile<CR>

" === Colorscheme ===
color onedark

" === Comments ===
nnoremap <silent> :Commentary<CR>
vnoremap <silent> :Commentary<CR>gv


" Extras
" ======

" Autoreload, when file edited outside Vim
set autoread
au FocusGained,BufEnter * checktime

" Sudo save file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Backspace acts like it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Enable 256-colors in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Don't use comment on newline
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

" === Highlight tabs ===
highlight TabLineSel cterm=reverse ctermfg=239 ctermbg=187 gui=reverse guifg=#4e4e4e guibg=#d7d7af

" === Functions ===

function SplitToTab()

endfunction
