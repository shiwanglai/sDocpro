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
'r' return a class 'str', TextIOBase   
'rb' return class 'bytes'   
故操作对象是str或bytes。    
TextIOBase is base on IOBase.   

mode   
'r': reading,default   
'w': writing   
'a': appending   
'b': binary mode   
't': text mode,default   

close
---
file.close()   

read
---
read(size=-1)    

返回值：   
class bytes:    
Return at most size bytes    
class str:    
return at most size characters    
回车换行算一个字符。    
默认返回所有文件内容。   


write
---

seek
---

tell
---
file.tell()   
Return the current stream position.   
注意是码流形式，非Text形式。   

readline
---

writeline
---



