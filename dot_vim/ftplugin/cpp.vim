if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal commentstring=//\ %s

if !has('packages')
  finish
endif

packadd vim-clang-format
nnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
vnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
