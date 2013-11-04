NeoBundle 'szw/vim-tags'
"vim-tags
au BufNewFile,BufRead *.php let g:vim_tags_project_tags_command = "ctags --languages=php -f ~/php.tags `pwd` 2>/dev/null &"
