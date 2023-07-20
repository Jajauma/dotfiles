if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

setlocal commentstring=//\ %s

if !has('packages')
    finish
endif

packadd a.vim
let g:alternateNoDefaultAlternate = 1
unmap <Leader>ih
unmap <Leader>is
unmap <Leader>ihn

packadd vim-clang-format
nnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
vnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
