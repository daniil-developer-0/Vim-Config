" === Coc Settings ===
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-emmet', 'coc-css', 'coc-tsserver', 'coc-snippets', 'coc-prettier']

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')


" === Colorscheme ===
color onedark

