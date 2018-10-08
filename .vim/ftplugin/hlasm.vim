" Vim filetype plugin file
" Language:	IBM HLASM for z/OS
" Maintainer:	MIF
" Last Change:	2016 Oct 24

" Only do this when not done yet for this buffer
if exists("b:loaded_hlasm")
  finish
endif

" Don't load another plugin for this buffer
let b:loaded_hlasm = 1

" Set ColorColumn options
highlight ColorColumn ctermbg=233 guibg=#2c2d27
let &colorcolumn="16,72,80,".join(range(120,999),",")

" Using line continuation here.
let s:cpo_save = &cpo
set cpo-=C

" Some additions later

let &cpo = s:cpo_save
unlet s:cpo_save
