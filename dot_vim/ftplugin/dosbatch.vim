if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" like factory defaults but lowercased
setlocal commentstring=rem\ %s
