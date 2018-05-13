let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "Empty",
            \ "AlwaysBreakTemplateDeclarations" : "true"}
autocmd FileType c ClangFormatAutoEnable
