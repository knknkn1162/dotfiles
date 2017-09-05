" switch off default mappings
let g:NERDCreateDefaultMappings = 0
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" enable normal mode & visual mode
nmap ,/ <Plug>NERDCommenterToggle
vmap ,/ <Plug>NERDCommenterToggle
nmap ,/a <Plug>NERDCommenterAppend
vmap ,/s <Plug>NERDCommenterSexy
