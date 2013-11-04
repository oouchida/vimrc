NeoBundle 'The-NERD-tree'
NeoBundle 'scrooloose/nerdtree.git'

map <C-e>      :NERDTreeToggle<CR>

"引数なしでvimを開いたらNERDTreeを起動、
"引数ありならNERDTreeは起動しない、引数で渡されたファイルを開く。
autocmd vimenter * if !argc() | NERDTree | endif

"他のバッファをすべて閉じた時にNERDTreeが開いていたらNERDTreeも一緒に閉じる。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"カラー表示する。
let g:NERDChristmasTree=1

"ファイルを開いた後も、NERDTreeを開いておく
let g:NERDTreeQuitOnOpen=0

"表示を無視するファイル設定する。
let g:NERDTreeIgnore=['\.clean$', '\.swp$', '\.bak$', '\~$']

"隠しファイルを表示設定。
let g:NERDTreeShowHidden=1

"ディレクトリとファイル名を表示
let g:NERDTreeShowFiles=1

"カーソルラインをハイライト表示
let g:NERDTreeHighlightCursorline=1

"ブックマークの表示
let g:NERDTreeShowBookmarks=1

"NERDTreeのツリーを開く場所
let g:NERDTreeWinPos="left"

"NERDTreeのツリーの幅
let g:NERDTreeWinSize=45

"ブックマークや、ヘルプのショートカットをメニューに表示する
let g:NERDTreeMinimalUI=1

"ツリー表示をする。
let g:NERDTreeDirArrows=0

"シングルクリックで表示
let g:NERDTreeMouseMode=3

"行番号の表示
let NERDTreeShowLineNumbers=1
