let g:deoplete#auto_complete_delay = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#auto_refresh_delay = 5
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 200

autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  " execute (default)
  nnoremap <silent><buffer><expr> <CR> denite#do_map('do_action')
  nnoremap <silent><buffer><expr> p denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
  nnoremap <silent><buffer><expr> i denite#do_map('open_filter_buffer')
endfunction

autocmd FileType denite-filter call s:denite_filter_my_setting()
function! s:denite_filter_my_setting() abort
  inoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
  nnoremap <silent><buffer><expr> <C-c> denite#do_map('quit')
endfunction


call denite#custom#map('normal', '<Up>', '<denite:move_to_previous_line>')
call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>')
call denite#custom#map('_', '<C-p>', '<denite:do_action:preview>')

" replace default grep command with fast ripgrep. For settings, see also https://github.com/Shougo/denite.nvim/blob/5bb925df42e7e6bd9554a44a3cfefdfe44ba958c/doc/denite.txt#L200-L207
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep', '--max-count', '10'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#source('grep', 'max_candidates', 120)
" the 2nd argument '!' expresses the grep interactive mode.
" see also https://github.com/Shougo/denite.nvim/blob/5bb925df42e7e6bd9554a44a3cfefdfe44ba958c/doc/denite.txt#L2145
call denite#custom#source('grep', 'args', ['', '', '!'])

nmap <silent> <C-u>f :<C-u>Denite file/rec -winheight=30<CR>
nmap <silent> <C-u>p :<C-u>Denite grep -winheight=30 -auto-preview=true<CR>
nmap <silent> <C-l> :<C-u>Denite grep -winheight=30 -max-dynamic-update-candidates=120 -buffer-name=search-buffer-denite<CR>i
nmap <silent> <C-g> :<C-u>DeniteCursorWord grep -winheight=30 -max-dynamic-update-candidates=120 -buffer-name=search-buffer-denite<CR>
nmap <silent> <C-u>b :<C-u>Denite buffer -winheight=30 -mode=normal<CR>
" Denite grep検索結果を再表示する
nnoremap <silent> <C-u>r :<C-u>Denite -resume -winheight=30 -buffer-name=search-buffer-denite<CR>
