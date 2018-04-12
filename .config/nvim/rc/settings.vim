"setting.vim
"-----------------
"検索関係
"-----------------
"{{{
"大文字と小文字を区別しなくなる
set ignorecase
"ignorecaseオプションを有効にしている場合に、smartcaseを有効にすると、小文字で検索すると大文字と小文字を無視して検索
set smartcase
"検索結果をハイライト表示
set hlsearch
"インクリメンタル検索: 検索ワードの最初の文字を入力した時点で検索が開始される
set incsearch
"ftwidth'の倍数に丸める
set shiftround
"Kでカーソル下の単語のhelpを引く
set keywordprg=:help " Open Vim internal help by K command
"検索時にファイルの下まで行ったら上まで戻る
set wrapscan

"----
"編集関係
"--------------------
"{{{
"tab settings
"<TAB>を含むファイルを開いた際、<TAB>を何文字の空白に変換するかを設定。
set tabstop=2
" キーボードで<TAB>を入力した際、<TAB>を何文字の空白に変換するかを設定。
set softtabstop=2
"vimが自動でインデントを行った際、設定する空白数。
set shiftwidth=2
"キーボードで<TAB>を入力した際、<TAB>を空白に自動的に変換する
set expandtab
" '<'や'>'でインデントする際に'shiftwidth'の倍数に丸める
set shiftround
" 改行時に前の行のインデントを継続する
set autoindent
" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent
" コマンドラインモードの補完を有効にする
set wildmenu
" 補完候補を一覧で出力 :e<tab>で表示 :e<tab><tab> complete
set wildmode=list,full
"テキスト挿入の自動折り返しに日本語を対応
set formatoptions+=mM
"vim の矩形選択で文字が無くても右へ進めるように
set virtualedit=block

"キーコードはすぐにタイムアウト
set notimeout
"マッピングは200ms待つ
set ttimeout ttimeoutlen=200

"スワップファイルを作らない
set noswapfile
"バックアップファイルを作らない
set nobackup
"undoファイルを作らない
set noundofile
"クリップボードを他のアプリと共有
set clipboard+=unnamedplus
"対応括弧を追加
set matchpairs& matchpairs+=<:>
"スペルチェック時に日本語を除外
set spelllang=en,cjk
"ファイルを開いた時に，カーソル位置を最後にカーソルがあった位置まで移動
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" bufferを切り替える時に編集中ファイルを保存しなくても良くなる機能
set hidden
" ノーマルモードに戻るときにすぐにpasteモードを脱する
autocmd InsertLeave * set nopaste

"----------------------
"表示関係
"----------------------
"
"毎行の前に行番号を表示する。（有効:number/無効:nonumber）
set number
"カーソルが何行目の何列目に置かれているかを表示する。（有効:ruler/無効:noruler）
set ruler
" cursor lineをなしにして、表示行の数字のみ強調する
set cursorline
highlight clear CursorLine
highlight CursorLineNr term=bold cterm=reverse
" 挿入モードでIMEをオンにするか？
set iminsert=0
" IMEをオンにするか？ -1はiminsertの値を参照
set imsearch=-1
"あんまり効いていないっぽい
set imdisable
"タブ文字を CTRL-I で表示し、行末に $ で表示する。（有効:list/無効:nolist）
set list
"Listモード (訳注: オプション 'list' がオンのとき) に使われる文字を設定する。
set listchars=tab:»-,extends:»,precedes:«,nbsp:%,eol:↲
"コマンドラインの高さを2行に
set cmdheight=2
"上部にタイトル表示
set title
"ビープの代わりにビジュアルベル(画面フラッシュ)を使う
set visualbell
"ビジュアルベルも無効化する
set t_vb=
"変換候補で一度に表示される数を設定する
set pumheight=10
"change status of cursor 1 = '|'
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1

"syntax highlight
syntax enable

