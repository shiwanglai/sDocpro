
vi:  Visual Interface -- by Bill Joy in 1976.    
vim: Vi IMproved -- by Bram Moolenaar in 1991.    

Help System
===
www.vim.org   

Use the ":help" command to access the Vim's online doucumentation which kept up-to-date with the software and can answer almost any question about Vim's functionality.    

The doc directory is in /usr/share/vim, e.g. /usr/share/vim/vim80/doc   
A pdf file:   
http://www.eandem.co.uk/mrw/vim/usr_doc/doc_a4c.pdf   

The FAQ of vim is in the github below.   
https://github.com/chrisbra/vim_faq/   

Help:    
normal mode下运行命令查看帮助，例如：    
:help    
:help index    
:help usr_toc    
:help tutor    

Docs:    
A Byte of Vim    
https://vim.swaroopch.com/    


Normal mode
===
where you can run commands. This is the default mode in which Vim starts up    

substitute
---
:%s/from/to/gc    
options:    
% - range，全文件替换，a,b表示范围从a行到b行    
g - global line，一整行都替换，否则每行首个from替换为to    
c - comfirm，每一处替换提示confirmation message    

Examples    
删除行尾空格    
:%s/\s\+$//     

macro
---
录制宏，可使用25个字母，以字母q开始和结束录制     
qa 'action' q    
使用宏    
@a    
查看宏，'^\['表示escape键    
:reg a    

Insert mode
===
where you insert i.e. write the text    

Visual mode
===
where you visually select a bunch of text so that you can run a command/operation only on that part of the text    

选择方式
---
按字符    
v    
按行数    
V    
任意字符block    
Ctrl-v    

