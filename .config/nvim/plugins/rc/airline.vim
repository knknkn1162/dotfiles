" appearance
let g:airline_powerline_fonts = 1
let g:airline_theme = 'luna'
let g:airline#extensions#tabline#enabled = 1

" Disable git hunks
let g:airline#extensions#hunks#enabled = 0

" Enable virtualenv name
let g:airline#extensions#virtualenv#enabled = 1

" Enable ALE plugin
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#ale#error_symbol = 'x'
let g:airline#extensions#ale#warning_symbol = '△'
