""共通設定

""TabとIndent
""自動インデントは行わない
set noautoindent
""タブ文字の代わりにスペースを入れる
set expandtab
""タブ文字の代わりに入れるスペースの数
set shiftwidth=2

""行数表示
""標準は行数表示
set nu

""普通のエディタに近づけるために
""" BackSpaceキーの設定
set backspace=start,eol,indent

""" ソースコード色付け
syntax on

""起動時のディレクトリ
cd $HOME

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""プラグイン用共通処理
set nocompatible
filetype off

""vundle用
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""NeoBundle用
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle'))
endif


filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""プラグインインストールおよび設定

""NERD tree
if filereadable(expand('~/vim_conf/nerd_tree.vim'))
  source ~/vim_conf/nerd_tree.vim
endif

""Taglist
if filereadable(expand('~/vim_conf/taglist.vim'))
  source ~/vim_conf/taglist.vim
endif

""vim-tags
if filereadable(expand('~/vim_conf/vim-tags.vim'))
  source ~/vim_conf/vim-tags.vim
endif

""srcexp
if filereadable(expand('~/vim_conf/srcexp.vim'))
  source ~/vim_conf/srcexp.vim
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd filetype php :set makeprg=php\ -l\ %
autocmd filetype php :set errorformat=%m\ in\ %f\ on\ line\ %l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""local
if filereadable(expand('~/vim_conf/local.vim'))
  source ~/vim_conf/local.vim
endif
