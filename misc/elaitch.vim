" lawren's colours, which probably now bear little resemblance
" to the excellent "miromiro" theme by jasonwryan


set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="lawren"
" Normal colors  --- 
hi Normal          ctermfg=7
hi Ignore          ctermfg=9
hi Comment         ctermfg=15 cterm=italic 
hi LineNr          ctermfg=8
hi Float           ctermfg=11
hi Include         ctermfg=11
hi Define          ctermfg=85
hi Macro           ctermfg=213
hi PreProc         ctermfg=85
hi PreCondit       ctermfg=213
hi NonText         ctermfg=8
hi Directory       ctermfg=123
hi SpecialKey      ctermfg=182
hi Type            ctermfg=255
hi String          ctermfg=7
hi Constant        ctermfg=13
hi Special         ctermfg=85
hi SpecialChar     ctermfg=85
hi Number          ctermfg=15
hi Identifier      ctermfg=213
hi Conditional     ctermfg=123
hi Repeat          ctermfg=9
hi Statement       ctermfg=81
hi Label           ctermfg=213
hi Operator        ctermfg=11
hi Keyword         ctermfg=182 
hi StorageClass    ctermfg=147
hi Structure       ctermfg=213
hi Typedef         ctermfg=123
hi Function        ctermfg=182
hi Exception       ctermfg=1
hi Underlined      ctermfg=147
hi Title           ctermfg=7
hi Tag             ctermfg=147
hi Delimiter       ctermfg=147
hi SpecialComment  ctermfg=169
hi Boolean         ctermfg=11
hi Todo            ctermfg=169
hi MoreMsg         ctermfg=213
hi ModeMsg         ctermfg=213
hi Debug           ctermfg=1
hi MatchParen      ctermfg=0    ctermbg=12
hi ErrorMsg        ctermfg=15    ctermbg=9
hi WildMenu        ctermfg=1    ctermbg=8
hi Folded          cterm=reverse ctermfg=6    ctermbg=0
hi Search          ctermfg=0    ctermbg=12
hi IncSearch       ctermfg=15    ctermbg=0
hi WarningMsg      ctermfg=0    ctermbg=5
hi Question        ctermfg=7   ctermbg=12
hi Pmenu           ctermfg=2    ctermbg=12
hi PmenuSel        ctermfg=7    ctermbg=12
hi Visual          ctermfg=7    ctermbg=12
hi CursorLine      cterm=NONE   ctermbg=233
hi CursorLineNr    ctermfg=11   ctermbg=233
hi StatusLine      ctermfg=0    ctermbg=7
hi StatusLineNC    ctermfg=8    ctermbg=0

" Diff lines ---
hi DiffLine        ctermbg=12
hi DiffText        ctermfg=16
hi DiffAdd         ctermfg=15    ctermbg=5
hi DiffChange      ctermfg=0    ctermbg=4
hi DiffDelete      ctermfg=0

" Specific for Vim script  --- 
hi vimCommentTitle ctermfg=10
hi vimFold         ctermfg=0    ctermbg=15

" Specific for help files  --- 
hi helpHyperTextJump ctermfg=11

" JS numbers only ---
hi javaScriptNumber ctermfg=6 
hi javaScript ctermfg=105
hi javaScriptBraces ctermfg=15
hi javascripExpression ctermfg=1
" Special for HTML ---
hi htmlTag        ctermfg=250
hi htmlEndTag     ctermfg=170
hi htmlTagName    ctermfg=81
hi htmlLink       ctermfg=15
hi htmlSpecialTagName ctermfg=110


      
" Specific for Perl  --- 
hi perlSharpBang  ctermfg=10  term=standout
hi perlStatement  ctermfg=110
hi perlStatementStorage ctermfg=1
hi perlVarPlain   ctermfg=3
hi perlVarPlain2  ctermfg=11

" Specific for Ruby  --- 
hi rubySharpBang  ctermfg=10  term=standout

" Spell checking  --- 
if version >= 700
  hi clear SpellBad
  hi clear SpellCap
  hi clear SpellRare
  hi clear SpellLocal
  hi SpellBad    ctermfg=0 ctermbg=9   cterm=underline
  hi SpellCap    ctermfg=0 ctermbg=9   cterm=underline
  hi SpellRare   ctermfg=0 ctermbg=9   cterm=underline
  hi SpellLocal  cterm=None
endif
" vim: foldmethod=marker foldmarker={{{,}}}:
