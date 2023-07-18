if exists("b:did_ftplugin")
    finish
endif
let b:did_ftplugin = 1

if has('packages')
    packadd vim-clang-format
    nnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
    vnoremap <buffer> <silent> <LocalLeader>f :ClangFormat<CR>
endif

setlocal commentstring=//\ %s
