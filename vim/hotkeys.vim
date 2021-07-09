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

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Format code with Prettier
nnoremap <silent><leader>f :CocCommand prettier.formatFile<CR>

" === Coded with love by me) ===
nmap <silent> <leader>c ICoded with love by daniilshilo-developer ❤️<ESC>

" === Comments ===
nnoremap <silent> :Commentary<CR>
vnoremap <silent> :Commentary<CR>gv
