" Ctrl+Vの挙動を変更
source $VIMRUNTIME/mswin.vim

""" tabはGUIに
set guioptions+=e

""" FF11キーでfullscreen ツールバーはいらない。
nnoremap <F11> :call MyFullScreen()<CR>
function! MyFullScreen()
  if &guioptions =~# 'C'
    set guioptions-=C
    if exists('s:go_temp')
      if s:go_temp =~# 'T'
        set guioptions+=T
      endif
    endif
    simalt ~r
  else
    let s:go_temp = &guioptions
    set guioptions+=C
    set guioptions-=T
    simalt ~x
  endif
endfunction
