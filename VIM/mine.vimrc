"
" A vimrc example
" help vimrc
" help vimrc-intro
"
" The vimrc file can contain all the commands that you type after a colon.
" Use the ":help" command to find out more.
"

" colorscheme
runtime colors/desert.vim

" do not compatible with vi
set nocompatible

" syntax off
syntax on

" show cursor line
set cursorline

" set style of cursor line
"hi CursorLine cterm=none ctermbg=DarkBlue ctermfg=White

"show cursor column
set cursorcolumn

" set style of cursor column
"hi CursorColumn cterm=none ctermbg=DarkBlue ctermfg=White

"show number
set number

" show cursor position at lower-right
set ruler

" ignore case when in search or replace
set ignorecase

" highlight the searched words
set hlsearch

" search when typing
set incsearch

" indent of C-lang style
set cindent

" show current mode, INSERT or VISUAL
set showmode

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" encoding
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,latin1

" leader
let mapleader=","

"
" statusline
"
set statusline=%1*\%<%.99f\                " show filename and path
set statusline+=%=%2*\%y%m%r%h%w\ %*       " show file type and state
set statusline+=%3*\%{&ff}[%{&fenc}]\ %*   " file encoding
set statusline+=%4*\row:%l/%L,col:%c\ %*   " cursor position
set statusline+=%3*\M%{mode()}\ B%n\%*     " mode and buf number
set statusline+=%5*\%3p%%\%*               " ratio
hi User1 cterm=none ctermfg=4 ctermbg=0    " User1 corresponding to %1*
hi User2 cterm=none ctermfg=6 ctermbg=0
hi User3 cterm=none ctermfg=5 ctermbg=0
hi User4 cterm=none ctermfg=2 ctermbg=0
hi User5 cterm=none ctermfg=3 ctermbg=0
set laststatus=2

"
" Folding
"
set foldmethod=syntax
hi Folded ctermfg=2
nnoremap <space>    zA

"
" Map Area
"
" ESC
inoremap jj    <esc>

" " to ""
"inoremap "    ""<esc>i


"
" runtime
"
runtime macros/matchit.vim

"
" plugins
"
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
call plug#end()

"
" plugin configs
"
source ~/.vim/vimrc/.vimrc-nerdtree
source ~/.vim/vimrc/.vimrc-leaderf

