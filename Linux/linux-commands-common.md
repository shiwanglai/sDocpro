基本按使用频度排序。    
分类参考：    
linuxcommand.org    

ls
===
list files and directories   
-l                         use a long listing format   
-S                         sort by file size   
-t                         sort by time   
-r, --reverse              reverse order while sorting   
-h, --human-readable  print sizes in human readable format   
-F, --classify             append indicator (one of */=>@|) to entries    

Examples   
---
ls -lt，按时间排序    
ls -lSh，按size排序、易读的数字显示    
ls -lSr，按size反向排序    
ls -l -d */  ，只显示目录    
ls -l | grep "^-"，只显示文件    


pwd
===
print working directory   

cd
===
change directory

less
===
view text files

file
===
classify a file's contents




cat
===
cat -v


df
===
df   

du
===
disk usage   
-s, --summarize       display only a total for each argument   
-h, --human-readable  print sizes in human readable format   
-d, --max-depth=N     print the total for a directory only if it is N or fewer levels below the command line argument   

Examples    
---
计算当前目录下文件目录总大小：    
du -sh    
计算当前目录下各子目录大小：    
du -h -d 1   


find
===
find   

grep
===
Global search Regular Expression and Print   
-n, --line-number         print line number with output lines   
-r, --recursive           equivalent to --directories=recurse.   
-s, --no-messages         suppress error messages   
-w, --word-regexp         force PATTERN to match only whole words   
-i, --ignore-case         ignore case distinctions   
--exclude-dir=DIR         排除DIR目录   
-B, --before-context=NUM  print NUM lines of leading context   
-A, --after-context=NUM   print NUM lines of trailing context   
-C, --context[=NUM]       print NUM (default 2) lines of output context    

Examples    
---
1 当前目录下搜索sth，打印行数、循环搜索、不显示错误、完全匹配。    
grep sth . -nrsw   
2 在.h文件中搜索thread   
find . -name "*.h" | xargs grep "thread" --color

ln
===
ln   

mount
===
mount a filesystem   

mount -t type device dir    
mount    

Examples
---
挂载debugfs到/sys/kernel/debug目录    
mount -t debugfs debugfs /sys/kernel/debug    
list mounted filesystems    
mount   

umount
===
umount dir

Examples
---
umount /sys/kernel/debug    

tar
===
GNU `tar' saves many files together into a single tape or disk archive, and can restore individual files from the archive.   

(1)-czf  
-c, --create  
-f, --file  
-z, --gzip
\# Create archive.tar from files or directories foo and bar.  
tar -cf archive.tar foo bar   
\# and zip the tar file with GNU zip   
tar -czf archive.tar.gz foo bar   
(2)-x  
-x, --extract  
\# Extract all files from archive.tar.  
tar -xf archive.tar   
(3)-p  
--preserve-permissions  
(4)-v  
--verbose   
verbosely list files processed   


rm
===
删除以r-t开头在文件或目录：   
rm -rf [r-t]*   

sort
===
-h    
-r    reverse the result of comparisons   

Examples    
---
反向排序，可与du一起使用    
du -h -d1 | sort -hr   



