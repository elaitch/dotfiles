version 6.0
colorscheme miromiro
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
let &cpo=s:cpo_save
unlet s:cpo_save
set nocompatible
syntax on
set background=dark
set number
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set hlsearch
set ignorecase
set incsearch
set ruler
set scrolloff=3
set showcmd
set showmatch
set smartcase
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" vim: set ft=vim :

:map <F5> :setlocal spell! spelllang=en_us<CR>
:nmap <C-N><C-N> :set invnumber<CR>

function! RangeChooser()
let temp = tempname()
" The option "--choosefiles" was added in ranger 1.5.1. Use the next line
" with ranger 1.4.2 through 1.5.0 instead.
"exec 'silent !ranger --choosefile=' . shellescape(temp)
exec 'silent !ranger --choosefiles=' . shellescape(temp)
if !filereadable(temp)
redraw!
" Nothing to read.
return
endif
let names = readfile(temp)
if empty(names)
redraw!
" Nothing to open.
return
endif
" Edit the first item.
exec 'edit ' . fnameescape(names[0])
" Add any remaning items to the arg list/buffer list.
for name in names[1:]
exec 'argadd ' . fnameescape(name)
endfor
redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>
