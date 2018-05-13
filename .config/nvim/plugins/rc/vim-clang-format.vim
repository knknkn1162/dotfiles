let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "None",
            \ "AlwaysBreakTemplateDeclarations" : "true"}
autocmd FileType c ClangFormatAutoEnable
