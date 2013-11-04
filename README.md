## はじめに
複数PCにVim環境を整えたくて、vimrc環境を構築します。

## 必要要件
* git
 * Windowsでは, https://code.google.com/p/msysgit/ などをインストールしてください。その後パスを通す必要があります。
* curl
 * Windowsでは以下のファイルをcurl.cmdをパスが通る場所に設置してください。
    @rem Do not use "echo off" to not affect any child calls.
    @setlocal
    
    @rem Get the abolute path to the parent directory, which is assumed to be the
    @rem Git installation root.
    @for /F "delims=" %%I in ("%~dp0..") do @set git_install_root=%%~fI
    @set PATH=%git_install_root%\bin;%git_install_root%\mingw\bin;%PATH%
    
    @if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
    @if not exist "%HOME%" @set HOME=%USERPROFILE%
    
    @curl.exe %*

* ctags

## Install
以下を.vimrcに追加してください。
    if filereadable(expand('~/vim_conf/vimrc.common'))
      source ~/vim_conf/vimrc.common
    endif
    if has("win32") || has("win64") 
      if filereadable(expand('~/vim_conf/vimrc.win'))
        source ~/vim_conf/vimrc.win
      endif
    else
      if filereadable(expand('~/vim_conf/vimrc.linux'))
        source ~/vim_conf/vimrc.linux
      endif
    endif

### git clone
    mkdir ~/vim_conf
    cd ~/vim_conf
    git clone git@github.com:oouchida/vim_conf.git
