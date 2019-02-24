
An Example
===
"                                                                               
" help vimrc   
"     vimrc-intro   
"   
" The vimrc file can contain all the commands that you type after a colon.   
" Use the ":help" command to find out more.   
"   
    
"colorscheme torte   
   
" not comp with vi   
set nocompatible   
    
" syntax off   
syntax on   
   
" show cursor line   
set cursorline   
    
" set style of cursor line    
hi CursorLine   cterm=none ctermbg=DarkBlue ctermfg=White   
   
"show cursor column   
set cursorcolumn   
    
" set style of cursor column   
hi CursorColumn cterm=none ctermbg=DarkBlue ctermfg=White   
   
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
    
" encoding   
set fileencodings=utf-8,utf-16,big5,gb2312,gbk,gb18030,latin1   

info
===
example vimrc
---
/usr/share/vim/vim80/vimrc_example.vim   
which include the default vimrc file   
/usr/share/vim/vim80/defaults.vim   

vimrc positoin
---

vim --version   

open && close
===
no
---
add prefix no to close an item   
for example:   
set number VS set nonumber   

off
---
syntax on VS syntax off   


colorscheme
===
short in colo   

colo desert   
colorscheme acolor   
acolor is in /usr/share/vim/vim80/colors   
or colo TAB to select one   


