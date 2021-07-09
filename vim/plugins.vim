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
