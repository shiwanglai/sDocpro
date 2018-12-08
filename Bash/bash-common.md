
gnu-doc reference
===
http://www.gnu.org/software/bash/manual/

an example
===
code
---
#!/bin/bash

if [ $# -ne 2 ]; then   
echo "the input num should be 2!"   
exit 1   
fi   
   
echo "input 1 is $1"   
echo "input 2 is $2"   
   
para=$1   
para+=' '   
para+=$2   
echo "input all is $para"   
   
\# compare   
if [ $1 = $2 ]; then   
echo the input is equal   
else   
echo the input is not equal   
fi   

input
---
./testif.sh aa bb

output
---
input 1 is aa   
input 2 is bb   
input all is aa bb   
the input is not equal   


Comments
===
single line: #   
multi line: not support   
   
#!/bin/bash，第一行#!指定使用的shell。   

Special Parameters
===
$n: the n param, n is 1 2 ..   
$#: the number of positional parameters in decimal   
$@: the positional parameters, starting from one   
$*: same as $@, except to a single word when double quoted   
$0: the name of the shell or shell script   
$$: the process ID of the shell   
$?: the exit status of the most recently executed foreground pipeline   
${num}: positional parameters beyond $9 using ${num}   

Conditional Expressions integer
===
数值比较   
arg1 OP arg2   
Arg1 and arg2 may be positive or negative integers.   
OP is one of the below.   
-eq: equal to   
-ne: not equal to   
-lt: less than   
-le: less than or equal to   
-gt: greater than   
-ge: greater than or equal to   
These arithmetic binary operators return true if the condition satisfied.   

Conditional Expressions string
===
字符串比较   
-z string: True if the length of string is zero.   
-n string: True if the length of string is non-zero   
string1 == string2: True if the strings are equal   
string1 = string2: same to ==   
string1 != string2: True if the strings are not equal   
string1 > string2: True if string1 sorts after string2 lexicographically.   
string1 < string2: True if string1 sorts before string2 lexicographically.   
\>和<需进行转义，否则shell当作重定向符号，即\\>或\\<。   

variables
===
变量赋值
---
v_name=value   
=前后不能有空格, case sensitive   
脚本自动决定变量值的类型   
反引号将shell命令输出赋给变量   
v_name=\`date\`   

变量引用
---
$v_name   
${v_name}   
${v_str_name\:m\:n}   

Conditional Constructs if
===
if test-commands; then   
  consequent-commands;   
[elif more-test-commands; then   
  more-consequents;]   
[else alternate-consequents;]   
fi   
如果test-commands返回0则执行consequent-commands。   

[ condition ]   
---
[ is a shell builtin，等同于test   
test命令可以判断3类条件：   
数值比较   
字符串比较   
文件比较   

[[ expression ]]   
---
除一般字符比较外，具有test没有的模式匹配pattern matching功能。   
使用正则表达式匹配字符串值。   
   
(( expression ))
---
除test使用的标准数学运算符，允许将高级数学表达式放入比较中。   
表达式里的>不需要转义。   



for
===
The syntax of the for command is:   
for name [ [in [words ...] ] ; ] do commands; done   

An alternate form of the for command is also supported:   
for (( expr1 ; expr2 ; expr3 )) ; do commands ; done   

samples
---
1   
list="rootfs usr data data2"  
for i in $list;  
do  
echo $i is appoint;   
done   

2   
for i in {1..9}   
do   
    echo $i   
done   

3   
for ((i=0; i<3; i++)); do   
{   
    echo $i   
}   
done   


while
===
The syntax of the while command is:   
while test-commands; do consequent-commands; done   

while   


function
===
func()   
{   
    echo func $1    
}    
func aa    


