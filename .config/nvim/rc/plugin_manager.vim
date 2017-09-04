"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

"reset ugroup
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath 

let s:config_home = empty($XDG_CONFIG_HOME) ? expand('~/.config') : $XDG_CONFIG_HOME
let s:toml_dir= s:config_home . '/nvim/plugins'
let s:toml_file = s:toml_dir . '/dein.toml'
let s:lazy_toml_file = s:toml_dir . '/lazy_dein.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file, {'lazy' : 0})
  call dein#load_toml(s:lazy_toml_file, {'lazy' : 1})
  call dein#end()
  call dein#save_state()

endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
