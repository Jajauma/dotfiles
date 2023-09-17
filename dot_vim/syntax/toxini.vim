if exists("b:current_syntax")
    finish
endif

syn case ignore

" non-escaped {/}
syn match toxiniSubstitution "\(^{\|[^\\]{\)\zs/\ze}"
" non-escaped {func:with:args}
syn match toxiniSubstitution "\(^{\|[^\\]{\)\zs\w\+\ze\(:.*\)*}"
" non-escaped {[sectionname]valuename}
syn match toxiniSubstitution "\(^{\|[^\\]{\)\zs\[\w\+\]\w\+\ze}"
hi def link toxiniSubstitution Type

" comments (non-escaped # or ; anywhere in the line)
syn match toxiniComment "\(^\zs#\|[^\\]\zs#\).*$"
syn match toxiniComment "\(^\zs;\|[^\\]\zs;\).*$"
hi def link toxiniComment Comment

syn match toxiniLabel "^\zs\w\+\ze\s*="
hi def link toxiniLabel Identifier

syn region toxiniHeader start="^\[" end="\]"
hi def link toxiniHeader Title

syn match toxiniLineEscape "\\$"
hi def link toxiniLineEscape SpecialChar

let b:current_syntax = "toxini"
