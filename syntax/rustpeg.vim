" Vim syntax file
" Language:     rustpeg
" Maintainer:   Trey Cordova <trey@trey.codes>
" Last Change:  February 15, 2016

" Prologue; load in Rust syntax.
if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif
syn include @rust syntax/rust.vim
if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

syn match not "\[\^"hs=s+1 contained
syn match matchers "[.*+?&!]" contained
syn match binding "\w\+:"he=e-1 contained
syn match zeroOrMore "[*]\{2}" contained
syn match oneOrMore "[+]\{2}" contained
syn region characterSet start=+\[+ skip=+\\\\\|\\\]+ end=+\]+ contains=not contained
syn region literal start=+"+ skip=+\\\\\|\\"+ end=+"+ contained
syn region definition start="\s*=" end="$" contains=characterSet,binding,zeroOrMore,oneOrMore,matchers,literal
syn region leadingOr start="\s*/[^/]" end="$" contains=characterSet,binding,zeroOrMore,oneOrMore,matchers,literal
syn region rust start="[^:]{?\=" end="}" contains=@rust

hi def link literal String
hi def link characterSet Delimiter
hi def link zeroOrMore Delimiter
hi def link oneOrMore Delimiter
hi def link not Operator
hi def link matchers Operator
hi def link definition Operator
hi def link leadingOr Operator
hi def link binding Identifier
