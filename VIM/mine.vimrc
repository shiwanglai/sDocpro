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
" plugin config NERDTree
"
map <C-n>  :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeQuitOnOpen = 1

"
" plugin config LeaderF
"
" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
"let g:Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
"let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

"let g:Lf_ShortcutF = "<leader>f"
noremap <leader>m :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
"noremap <leader>b :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
"noremap <leader>t :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
"noremap <leader>l :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

"noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
"noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
"xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
"noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `:Leaderf gtags --update` first to create the basic database
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_Gtagslabel = 'native-pygments'
noremap <leader>r :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>d :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
"noremap <leader>o :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
"noremap <leader>n :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
"noremap <leader>p :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

" goto a definition
noremap <leader>g :Leaderf! gtags -d 

"
" plugin config xxx
"

