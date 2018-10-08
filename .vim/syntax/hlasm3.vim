" Vim syntax file
" Language: High Level Assembler Language, HLASM, ASM370
" Maintainer: Shen Bing
" Last Change: August 23 2009

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
"
" Standard character set
" Alphabetic: a-z,A-Z,@,$,#,_
" Numeric: 0-9
" Special: +-,=.*()'/&
"
" Ordinary symbols:
" [:alpha:][:alpha::digit:] up to 63 chars
"
" Variable symbol:
" &[:alpha:][:alpha::digit:] up to 63 chars
" 
" System variable
" &SYS[:alpha::digit:] up tu 63 chars
"
" Symbol definition:
" in name field or in operands for EXTRN or WXTRN
if version < 600
 syntax clear
elseif exists("b:current_syntax")
 finish
endif
" Set ColorColumn options
highlight ColorColumn ctermbg=233 guibg=#2c2d27
let &colorcolumn="16,72,80,".join(range(120,999),",")
syn case ignore
" ASCII: #(35),$(36),%(37),&(38),0-9(48-57),@(64),A-Z(65-90),_(95),a-z(97-122)
"syn iskeyword 35,36,38,48-57,64,65-90,95,97-122
syn iskeyword 36,48-57,65-90,97-122
"setlocal isident+=@
"setlocal isident+=#
"setlocal isident+=&
"syn sync minlines=2
"syn sync ccomment hlasmComment
"syn sync linebreaks=1

syn match  xOperation    /<\k*\>/ contained skipwhite nextgroup=xParameter
syn match  xParameter    /\S*/ contained
syn match  xLabel        /^\([@#$&.]\=[0-9a-z@$#_.]\+\)\|\s/ skipwhite contained nextgroup=xOperation
syn match  xComment      /^\.\=\*.*$/
syn match  xInstruction  /\(\_^\(\(\.\*\)\|\*\)\@!.*\%72c\S\n\)\{}\(\_^\(\(\.\*\)\|\*\)\@!.*\%<72c\_$\)/ contains=xLabel
"syn match  xFirstLine    /^\(\(\.\*\)\|\*\)\@!.*\%72c\S/ contained
"syn match  xNextLine     /\(\%72c\S\n\)\@>\space\{15}.*\%72c\S/ contained
" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_asm_syntax_inits")
    if version < 508
        let did_asm_syntax_inits = 1
        command -nargs=+ HiLink hi link <args>
    else
        command -nargs=+ HiLink hi def link <args>
    endif


    " The default methods for highlighting.  Can be overridden later
    HiLink xLineComment   Comment
    HiLink xComment       Comment
    HiLink xCommentBlock  Comment
    HiLink xAttribute     Special
    HiLink xRegister      Type
    HiLink xContinue      Number
    HiLink xLabel         Identifier
    HiLink xSymbol        Identifier
    HiLink xSymbol1       Identifier
    HiLink xString        String
    HiLink xString1       String

    HiLink xInstruction   Statement
    HiLink xDirective     Special
    HiLink xBranch        Number
    HiLink xMacro         Macro
    HiLink xOperator      Operator
    HiLink xDelimiter     Operator

    HiLink xParameter     Keyword
    HiLink xTodo          Todo

    delcommand HiLink
endif


let b:current_syntax = "hlasm"
