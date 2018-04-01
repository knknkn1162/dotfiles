let g:deoplete#auto_complete_delay = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_camel_case = 0
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#auto_refresh_delay = 30
let g:deoplete#enable_smart_case = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 200
call denite#custom#map('normal', '<Up>', '<denite:move_to_previous_line>')
call denite#custom#map('normal', '<Down>', '<denite:move_to_next_line>')
call denite#custom#map('_', '<C-p>', '<denite:do_action:preview>')

" replace default grep command with fast ripgrep. For settings, see also https://github.com/Shougo/denite.nvim/blob/5bb925df42e7e6bd9554a44a3cfefdfe44ba958c/doc/denite.txt#L200-L207
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

"
" the 2nd argument '!' expresses the grep interactive mode.
" see also https://github.com/Shougo/denite.nvim/blob/5bb925df42e7e6bd9554a44a3cfefdfe44ba958c/doc/denite.txt#L2145
call denite#custom#source('grep', 'args', ['', '', '!'])
nmap <silent> <C-p> :<C-u>Denite file_rec -highlight-mode-insert=Search -winheight=10<CR>
nmap <silent> <C-g> :<C-u>Denite grep -highlight-mode-insert=Search -winheight=20<CR>
nmap <silent> <C-b> :<C-u>Denite buffer -highlight-mode-insert=Search -winheight=15 -mode=normal<CR>