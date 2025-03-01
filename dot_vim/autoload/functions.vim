function! functions#GetParentDirPrompt()
  return @% == '' ? './' : expand('%:~:.:h') . '/'
endfunction

function! functions#GetPSCommand()
  return 'pwsh -nologo' .
        \ (@% == '' ? '' : ' -WorkingDirectory "'. expand('%:~:.:h') . '"')
endfunction

function! functions#WipeBuffersWithoutFiles()
  let bufs = filter(range(1, bufnr('$')), 'bufexists(v:val) && '.
        \'!bufloaded(v:val) && '.
        \'empty(getbufvar(v:val, "&buftype")) && '.
        \'!filereadable(bufname(v:val))')
  if !empty(bufs)
    execute 'bwipeout' join(bufs)
  endif
endfunction

function! functions#SendToTerm(what)
  call term_sendkeys('', a:what)
  return ''
endfunc

function! functions#ExtractUrl(from)
  return matchstr(
        \ a:from,
        \ '\%(\%(http\|ftp\|irc\)s\?\|file\)://\S\{-}\ze[^A-Za-z0-9/]*$')
endfunc

function! functions#OpenUrl(mode)
  let saved_unnamed_register = @@
  if a:mode ==# 'v' || a:mode ==# 'V'
    normal! `<v`>y
    let url = empty(functions#ExtractUrl(@@)) ? "" : @@
  elseif a:mode ==# 'char'
    normal! `[v`]y
    let url = empty(functions#ExtractUrl(@@)) ? "" : @@
  elseif a:mode ==# 'n'
    let url = functions#ExtractUrl(expand("<cWORD>"))
  else
    return
  endif
  if !empty(url)
    silent execute '!start ' shellescape(url, 1)[1:-2]
    redraw!
  else
    echom "No valid URL found"
  endif
  let @@ = saved_unnamed_register
endfunction
