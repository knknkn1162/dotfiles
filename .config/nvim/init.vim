"init.vim
let s:home = expand('~')
let s:vim_home = s:home .'/.config/nvim'
let s:rc_dir   = s:vim_home . '/rc'

" global conf
" path
let g:python3_host_prog = s:home . '/.pyenv/versions/3.6.1/bin/python'


"分割したファイルを読み込み
function s:load_rc(file)
  execute 'source ' . s:rc_dir . '/' . a:file
endfunction

" fileが存在すれば、ロードする
function s:file_read(file)
  if filereadable(expand(s:rc_dir . '/' . a:file))
    call s:load_rc(a:file)
  endif
endfunction


call s:file_read('settings.vim')
call s:file_read('mappings.vim')
" additional mappings
call s:file_read('space_mappings.vim')

call s:file_read('color.vim')
call s:file_read('filetypes.vim')

" plugin manager (dein.vim)
call s:file_read('plugin_manager.vim')

