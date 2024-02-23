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
