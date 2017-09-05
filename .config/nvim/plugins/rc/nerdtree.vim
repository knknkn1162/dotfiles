" nerdtreeを簡易に表示できるようにする
nnoremap <Space><Space> :<C-u>NERDTreeToggle<CR>
" show including dotfiles
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

let NERDTreeIgnore=['\.pyc$']
