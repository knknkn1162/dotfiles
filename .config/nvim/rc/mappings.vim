"Yの動作をDやCと同じにする
map Y y$
"<ESC>2回で検索後の強調表示を解除する nohl は、nohlsearchの省略系
nnoremap <ESC><ESC> :nohl<CR><C-L>
"j k を表示行移動できるよう変更
nnoremap j gj
nnoremap k gk
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
".vimrcを開く
nnoremap ,ev :tabe $HOME/.vimrc<CR> tabe..tabedit
".vimrcを再読み込み
nnoremap ,rv :source $HOME/.vimrc<CR>

"ヤンクした文字列でカーソル位置の単語を置換
"silent..実行するコマンドがコマンドラインに表示されないようにする
"vnoremap..ビジュアル(選択)モード:wq
nnoremap <silent> cy  ce<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
vnoremap <silent> cy  c<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
nnoremap <silent> ciy  ciw<C-r>0<ESC>:let@/=@1<CR>:noh<CR>
" insert modeで<Command-s>保存できるようにする
inoremap <C-s> <ESC>:<C-u>up<CR>
nnoremap <C-s> <ESC>:<C-u>up<CR>

"ノーマルモード時にenterで改行する
noremap <CR> o<ESC>
inoremap <C-]> <ESC>
"ビジュアルモードでインデント変更後に再選択
vnoremap <  <gv
vnoremap >  >gv

" dein update
nmap du :call dein#update()<CR>:


"-------------------
"tabs & windows settings
"-------------------

" disable s command to use otherwise
nnoremap s <Nop>
" split windows horizontally
" nnoremap ss :<C-u>sp<CR>
" split windows vertically
nnoremap ss :<C-u>vs<CR>

" move cursor on multiple windows
" j:bottom h:left k:top l:right
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w
" 次に移動する
nnoremap sn <C-w>w
" 前に移動する
nnoremap sp <C-w><C-p>
" ウィンドウ or タブを閉じる
nnoremap sq :<C-u>q<CR>
nnoremap qq :<C-u>q<CR>

" buffer settings
nnoremap bd :<C-u>bd<CR>
nnoremap bf :<C-u>bf<CR>
nnoremap bl :<C-u>bl<CR>
" 次のバッファに移動する
nnoremap bn :<C-u>bn<CR>
inoremap <C-b> <ESC>:<C-u>bn<CR>a
" 前のバッファに移動する
nnoremap bp :<C-u>bp<CR>
" バッファを終了する (bdと同じ)
nnoremap bq :<C-u>bd<CR>

" カーソルがあるウィンドウを左, 下, 上, 右方向に移動する
" r: rotate
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r

" 大きさを揃える
nnoremap s= <C-w>=
" 縦横最大化
nnoremap so <C-w>_<C-w>|

" 新規タブ
"nnoremap st :<C-u>tabnew<CR>
" 次のタブに切り替え
"nnoremap sn gt
" 前のタブに切り替え
"nnoremap sp gT

" 閉じタグを補完
augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype eruby inoremap <buffer> </ </<C-x><C-o>
augroup END
