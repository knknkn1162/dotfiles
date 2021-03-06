let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0 " 
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 10000

" ignore:
let g:deoplete#ignore_sources = {} " Initialize
let g:deoplete#ignore_sources._ = ['around']
let g:deoplete#ignore_sources.python =
      \ ['buffer', 'dictionary', 'member', 'omni', 'tag', 'syntax', 'around'] " file/include conflicting deoplete-jedi

" mapping
" <TAB>: completion.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? "<C-p>" : "<C-h>"

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."<C-h>"
inoremap <expr><BS> deoplete#smart_close_popup()."<C-h>"
inoremap <expr><C-g> deoplete#undo_comcletion()

" <C-l>: redraw candidates
"inoremap <expr><C-l> deoplete#refresh()

" deplicated due to vim-endwise
" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
  " return deoplete#cancel_popup() . \<CR>"
" endfunction



" deplicated due to mattn/emmet-vim
" pumvisible() ? deoplete#close_popup() : "
" inoremap <expr><CR>  pumvisible() ? deoplete#close_popup() : <CR>"
" inoremap <expr> '  pumvisible() ? deoplete#close_popup() : '"

" customs
" set ghc
call deoplete#custom#source('ghc', 'sorters', ['sorter_word'])

" Use auto delimiter
call deoplete#custom#source('_', 'converters', [
      \ 'converter_remove_paren',
      \ 'converter_remove_overlap',
      \ 'converter_truncate_abbr',
      \ 'converter_truncate_menu',
      \ 'converter_auto_delimiter',
      \ ])
