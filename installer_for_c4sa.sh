#/bin/sh
###########################################################################
# C4SA用Vim環境インストーラー
# 2013/12/31 oouchidakenta@realglobe.jp
#
###########################################################################
# NeoBundleのインストール
cd $HOME
mkdir -p .vim/bundle
cd .vim/bundle
git clone https://github.com/Shougo/neobundle.vim.git
# .vimrcのインストール
cd $HOME
wget --no-check-certificate https://github.com/oouchida/vimrc/tarball/master -O - | tar xzv
mv oouchida-vimrc-*/.vimrc $HOME
mv oouchida-vimrc-*/* $HOME
# local.vimのインストール
cat > $HOME/vim_conf/local.vim << EOF
let Tlist_Ctags_Cmd = "$HOME/ctags-5.8/ctags"
let g:SrcExpl_updateTagsCmd = "$HOME/ctags-5.8/ctags --sort=foldcase -R ."
let g:NERDTreeDirArrows=0
cd /canvases/*/data/*/public_html
EOF
# ctagsのインストール
cd $HOME
wget http://prdownloads.sourceforge.net/ctags/ctags-5.8.tar.gz
tar -xvzf ctags-5.8.tar.gz
cd ctags-5.8
./configure
make
