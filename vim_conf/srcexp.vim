NeoBundle 'SrcExpl'

" F8ボタンでウィンドウを起動・終了
nmap <F8> :SrcExplToggle<CR>

" タグの位置はカレントディレクトリから上に再帰的に探す
set tags=.tags;

"ウィンドウの高さ
"初期値8
"let g:SrcExpl_WinHeight     = 8

"ウィンドウのアップデート。値はミリ秒。
"初期値は100 (100ミリ秒)
"let g:SrcExpl_RefreshTime   = 100

"使用する他のVimプラグインのバッファは無視する。
"バッファ名を入力
"初期値 [ "__Tag_List__", "_NERD_tree_" ]
"let g:SrcExpl_pluginList = [ "__Tag_List__", "_NERD_tree_" ]

"ローカル定義の検索を許可するか
"初期値1 : 許可する
"let g:SrcExpl_searchLocalDef

"SrcExpl起動時に、タグを再生成するか
"初期値1 : 再生成する
let g:SrcExpl_UpdateTags = 0

"タグのアップデートするときのコマンド
"初期値 "ctags --sort=foldcase -R ."
"let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."

"タグへのジャンプするためのキー
"初期値: '<CR>' (Return/Enterキー)
"let g:SrcExpl_jumpKey
"
"タグへジャンブしたときに、戻ってくるためのキー
"初期値：'<SPACE>'
"let g:SrcExpl_goobackKey = '<SPACE>'

"強制的にタグファイルを作成し直すためのキー
"初期値：''
let g:SrcExpl_updateTagsKey = "<F12>" 

"前の定義に戻るためのジャンプ先を表示する"
"初期値：''
let g:SrcExpl_prevDefKey = "<F3>" 

"次の定義に移動するためのジャンプ先を表示する
"初期値：''
 let g:SrcExpl_nextDefKey = "<F4>" 
