let g:Gtags_Auto_Map = 0
let g:Gtags_OpenQuickfixWindow = 1
" Show definetion of function cousor word on quickfix
" Show reference of cousor word on quickfix
nnoremap <C-r> :<C-u>exe("Gtags -r ".expand('<cword>'))<CR><CR>
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
