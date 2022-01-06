"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
let s:cache_home = expand('~/.cache')
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
let &runtimepath = s:dein_repo_dir .",". &runtimepath

let s:config_home = expand('~/.config')
let s:toml_dir= s:config_home . '/nvim/plugins'
let s:toml_file = s:toml_dir . '/dein.toml'
let s:lazy_toml_file = s:toml_dir . '/lazy_dein.toml'

if dein#min#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file, {'lazy' : 0})
  "call dein#load_toml(s:lazy_toml_file, {'lazy' : 1})
  call dein#end()

  call dein#save_state()

endif
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
