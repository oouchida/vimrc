"""文字コードは可能な限りutf-8
if has('gui_running') && !has('unix')
  set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
endif


if filereadable(expand('~/vim_conf/common.vim'))
  source ~/vim_conf/common.vim
endif

if has("win32") || has("win64") 
  if filereadable(expand('~/vim_conf/win.vim'))
    source ~/vim_conf/win.vim
  endif
else
  if filereadable(expand('~/vim_conf/linux.vim'))
    source ~/vim_conf/linux.vim
  endif
endif

