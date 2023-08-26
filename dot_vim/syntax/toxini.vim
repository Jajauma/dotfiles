if exists("b:current_syntax")
    finish
endif

syn case ignore

syn match toxiniComment "^\s*[#;].*$"
hi def link toxiniComment Comment

syn match toxiniLabel "^\zs\w\+\ze\s*="
hi def link toxiniLabel Identifier

syn region toxiniHeader start="^\[" end="\]"
hi def link toxiniHeader Title

syn match toxiniLineEscape "\\$"
hi def link toxiniLineEscape SpecialChar

let b:current_syntax = "toxini"
