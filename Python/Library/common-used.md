***
# Built-in Types
***
https://docs.python.org/3/library/stdtypes.html#    
常用的有str、list，都是class。    

Sequence Types : list, tuple, range
===
常规操作
---
s + t   
x in s   
s[i]，第i个，base on 0   
s[i:j]，第i到j-1个   
s[i:j:k]，第i到j-1个，step k   

赋值
---
赋值参考 Mutable Sequence Types 章节    
例如：   
lst[i]=x   
lst.append(x)   
lst.insert(i, x)   
lst.remove(x)   

Text Sequence Type : str
===
find
---
str.find(sub)   
sub为子字符串   
返回值为lowest index，类型class int，based on 0   
Return -1 if sub is not found   
find是否存在时，可以使用sub in str替代。   

split
---
str.split(sep)   
sep为分隔符或字符串，例如" "或","    
返回值为a list of the words seperated，类型为class list    



***
# Text Processing Services
***
re   

re : Regular expression operations
===
https://docs.python.org/3/library/re.html    

常用正则
---
/d：一个数字   
/D：一个非数字   
[a-zA-Z] ：一个字符   
/s：一个空白字符   
/S：一个非空白字符   

findall
---
re.findall(pattern, string, flags=0)    
例如   
lstr=re.findall(r"\d\d", string)   
输出list，首个匹配为lstr[0]    

***
# Generic Operating System Services
***
File (io : Core tools for working with streams)
===
https://docs.python.org/3/library/io.html    

open
---
open(file, mode)   

return   
'r' return a class '_io.TextIOWrapper'   
so does 'w'   
IOBase   
--TextIOBase   
----TextIOWrapper   

'rb' return a class '_io.BufferedReader'   
IOBase   
--BufferedIOBase   
----BufferedReader *rb   
----BufferedWriter *wb   
------BufferedRandom *wb+   

mode   
'r': reading,default   
'w': writing   
'a': appending   
'+': reading and writing, used with r w or a   
'b': binary mode   
't': text mode, default   

close
---
file.close()   

read
---
read(size=-1)    

返回值：   
return a class bytes containing at most size bytes    
or   
return a class str containing at most size characters    
回车换行算一个字符。    
默认返回所有文件内容。   

例如：   
file.read()，读取全部    
file.read(10)，读取10个    

readline
---
readline(size=-1)    

返回值：   
return a class bytes containing at most size bytes until newline or EOF    
(just from IOBase)   
or    
return a class str containing at most size characters until newline or EOF    

例如：   
file.readline()，读一行    

write
---
write(bs)   

Write the str to the stream and return the number of characters written   
or   
Write the bytes to the stream and return the number of bytes written   

例如：   
file.write("hello")   
or   
file.write(b"hello")    

writeline
---

writelines
---

seek
---

tell
---
file.tell()   
Return the current stream position.   
注意是码流形式，非Text形式。   




