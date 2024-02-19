function! fs#GetParentDirPrompt()
    return @% == '' ? './' : expand('%:~:.:h') . '/'
endfunction

function! fs#GetPSCommand()
    return 'pwsh -nologo' .
        \ (@% == '' ? '' : ' -WorkingDirectory "'. expand('%:~:.:h') . '"')
endfunction
