" Ctrl+V�̋�����ύX
source $VIMRUNTIME/mswin.vim

""" tab��GUI��
set guioptions+=e

""" FF11�L�[��fullscreen �c�[���o�[�͂���Ȃ��B
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
