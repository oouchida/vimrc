NeoBundle 'The-NERD-tree'
NeoBundle 'scrooloose/nerdtree.git'

map <C-e>      :NERDTreeToggle<CR>

"引数なしでvimを開いたらNERDTreeを起動、
"引数ありならNERDTreeは起動しない、引数で渡されたファイルを開く。
autocmd vimenter * if !argc() | NERDTree | endif

"他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"カラー表示する。
"0 または 1
"初期値１：カラー表示
"let g:NERDChristmasTree=1

"カーソル位置の自動調節を行うか
"0 または 1
"初期値1 : 自動調節
"let g:NERDTreeAutoCenter=1

"カーソルの自動調節位置設定
"自然数
"初期値3
"let g:NERDTreeAutoCenterThreshold

"ファイル表示の自動ソート
"0 または 1
"初期値0 : ソートを行わない
let g:NERDTreeCaseSensitiveSort=1

"ツリーを表示するカレントディレクトリの変更を行うか
"0 : 行わない、1 : 変更を行えるようにする、2 : 自動的に変更する
"初期値0
"let g:NERDTreeChDirMode=0

"カーソルラインをハイライト表示
"0 または 1
"初期値1 : 行う
"let g:NERDTreeHighlightCursorline=1

"セカンドツリーを表示を有効に
":edit <ディレクトリ名>
"0 または 1
"初期値1 : 有効
"let g:NERDTreeHijackNetrw=1

"表示を無視するファイル設定する。
"初期値 ['\~$']
let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']

"ブックマークファイル名
"初期値: $HOME/.NERDTreeBookmarks
"let g:NERDTreeBookmarksFile=

"マウスでの操作
"1: ダブルクリックでファイル・ディレクトリが開く
"2: ディレクトリはダブルクリック・ファイルはシングルクリックで開く
"3: シングルクリックでファイル・ディレクトリが開く
"初期値1 
let g:NERDTreeMouseMode=3

"ファイルを開いた後も、NERDTreeを自動的に閉じるかどうか
"0 または 1
"初期値0: 閉じない
"let g:NERDTreeQuitOnOpen=0

"ブックマークの表示
"0 または 1
"初期値0: 表示しない
"let g:NERDTreeShowBookmarks=0

"ツリーにファイル名を表示するか
"0 または 1
"初期値1: 表示する
"let g:NERDTreeShowFiles=1

"隠しファイルを表示設定
"0 または 1
"初期値0: 表示しない
let g:NERDTreeShowHidden=1

"ツリーでの行番号の表示
"0 または 1
"初期値0: 表示しない
let g:NERDTreeShowLineNumbers=1

"ソートを行う時の、表示順番設定
"正規表現で設定
"初期値 ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
"let g:NERDTreeSortOrder=

"ステータス表示
"初期値: %{b:NERDTreeRoot.path.strForOS(0)}
"let g:NERDTreeStatusline=

"ツリーを開く場所
"left または right
"初期値left: 左側に設置
"let g:NERDTreeWinPos="left"

"ツリーの幅
"初期値31
let g:NERDTreeWinSize=45

"ブックマークやヘルプのショートカットを表示
"0 または 1
"初期値0: 表示する
"let g:NERDTreeMinimalUI=0

"古い形式である|と+と~の記号だけでツリー表示
"ターミナルなどで表示する場合は記号だけの方が画面が崩れないかもしれない
"0 または 1
"初期値1: グラフィカルに表示する
let g:NERDTreeDirArrows=0
