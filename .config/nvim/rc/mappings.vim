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
" insert modeで<Ctrl-s>保存できるようにする
inoremap <C-s> <ESC>:up<CR>a
inoremap <D-s> <ESC>:up<CR>a

"<ESC>遠いので、別キーを追加設定
inoremap <C-c> <ESC>
noremap <C-c> <ESC>

"ノーマルモード時にenterで改行する
noremap <CR> o<ESC>

"ビジュアルモードでインデント変更後に再選択
vnoremap <  <gv
vnoremap >  >gv


"-------------------
"tabs & windows settings
"-------------------

" disable s command to use otherwise
nnoremap s <Nop>
" split windows horizontally
nnoremap ss :<C-u>sp<CR>
" split windows vertically
nnoremap sv :<C-u>vs<CR>

" move cursor on multiple windows
" j:bottom h:left k:top l:right
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sw <C-w>w

" カーソルがあるウィンドウを左, 下, 上, 右方向に移動する
" r: rotate
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sr <C-w>r

" カレントウィンドウの大きさを変える
" 幅を増やす
"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
" 幅を減らす
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"高さを増やす
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"高さを減らす
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')
" 大きさを揃える
nnoremap s= <C-w>=
" 縦横最大化
nnoremap so <C-w>_<C-w>|

" 新規タブ
nnoremap st :<C-u>tabnew<CR>
" 次のタブに切り替え
nnoremap sn gt
" 前のタブに切り替え
nnoremap sp gT

" ウィンドウを閉じる
nnoremap sq :<C-u>q<CR>
" バッファを閉じる
nnoremap sQ :bd

