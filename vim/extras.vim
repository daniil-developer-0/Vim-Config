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
