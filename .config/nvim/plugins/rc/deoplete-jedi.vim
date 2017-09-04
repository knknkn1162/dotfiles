let g:deoplete#sources#jedi#statement_length = 0
let g:deoplete#sources#jedi#short_types = 0
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources#jedi#worker_threads = 2
let g:deoplete#sources#jedi#python_path = g:python3_host_prog
autocmd FileType python setlocal completeopt-=preview ":ポップアップを表示しない

