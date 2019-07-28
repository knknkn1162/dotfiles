"init.vim
let s:home = expand('~')
let s:vim_home = s:home .'/.config/nvim'
let s:rc_dir   = s:vim_home . '/rc'

" global conf
" python :path
" set python version properly or The plugin, deoplete could not be loaded.
" See also https://github.com/Shougo/deoplete.nvim/issues/550
" after changing this, call :UpdateRemotePlugins, also, confirm by the nvim command, :CheckHealth.
let g:python3_host_prog = s:home . '/.pyenv/versions/3.7.4/bin/python'


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
execute 'source ' . s:rc_dir . '/' . 'command.vim'
