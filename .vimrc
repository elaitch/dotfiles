" Makest thou this shame thy pastime?
" -- William Shakespeare on my .vimrc

" general
version 6.0
colorscheme lawren
if &cp | set nocp | endif
syntax on

" list tabs
let c_space_errors = 1
:set listchars=tab:>-

" set
set background=dark
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set hlsearch
set incsearch
set ignorecase
set nocompatible
set number
set ruler
set scrolloff=5
set showcmd
set showmatch
set smartcase
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

function MultiScroll(OnOff)
if a:OnOff == 1
  noremap j 5j
  noremap k 5k
else
  noremap j j
  noremap k k
endif
endfunction 

map \j :call MultiScroll(1)<RETURN>
map \k :call MultiScroll(0)<RETURN>

" spell check
:map <F5> :setlocal spell! spelllang=en_us<CR>
:nmap <C-N><C-N> :set invnumber<CR>

" use \r to browse files w/ ranger
function! RangeChooser()
let temp = tempname()
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
