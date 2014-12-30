execute pathogen#infect()

set nocompatible

set wrapscan

" Command line two lines high
set ch=2

" Visual bell
set vb

set backspace=2
set cpoptions=ces$
set laststatus=2
set mousehide
set guioptions=ac
set timeoutlen=500
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" Start scrolling when we're 8 lines away from margins
set scrolloff=8

set virtualedit=all
set complete=.,w,b,t
set incsearch

" Keep undo history across sessions, by storing in file.
if has('persistent_undo')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

" The best theme ever
colorscheme xoria256
set synmaxcol=2048

" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" Mouse scroll
set mouse=a

" Line numbers
set number

syntax on
filetype plugin indent on
let g:airline_section_z = '%3p%% :%3l:%3c:0x%B'
let g:auto_save = 1

au BufRead,BufNewFile *.less set filetype=css
au BufRead,BufNewFile *.iced set filetype=coffee

filetype plugin on

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo
