
gnu-doc reference
===
http://www.gnu.org/software/bash/manual/

***

an example parameter
===
code
---
t_full=~/dev/srcbase/kernelorg/mainline/linux/kernel/workqueue.c   
t_path=${t_full%/\*}   
echo t_path: $t_path   
t_name=${t_full##\*/}   
echo t_name: $t_name   
t_name_noc=${t_name%.\*}   
echo t_name_noc: $t_name_noc   
echo full: ${t_path}"/"${t_name}   

input
---
./testparam.sh

output
---
t_path: /home/roger/dev/srcbase/kernelorg/mainline/linux/kernel   
t_name: workqueue.c   
t_name_noc: workqueue   
full: /home/roger/dev/srcbase/kernelorg/mainline/linux/kernel/workqueue.c   

Shell Parameter Expansion
===
${parameter#word} or ${parameter##word}
---
word is a pattern   
if the pattern matches the beginning of the expanded value of parameter   
the result of the expansion is the expanded value of parameter   
with the shortest matching pattern (the ‘#’ case)   
or the longest matching pattern (the ‘##’ case) deleted.   

${parameter#word} or ${parameter##word}
---
word is a pattern   
If the pattern matches If the pattern matches a trailing portion   
the result of the expansion is the value of parameter   
with the shortest matching pattern (the ‘%’ case)   
or the longest matching pattern (the ‘%%’ case) deleted.   


an example if
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
$n
---
the n param, n is 1 2 ..   

$#
---
the number of positional parameters in decimal   

$@
---
the positional parameters, starting from one   

$*
---
same as $@, except to a single word when double quoted   

$0
---
the name of the shell or shell script   

$$
---
the process ID of the shell   

$?
---
the exit status of the most recently executed foreground pipeline   

${num}
---
positional parameters beyond $9 using ${num}   

Conditional Expressions integer
===
数值比较   

arg1 OP arg2   
Arg1 and arg2 may be positive or negative integers.   
OP is one of the below.   

-eq
---
equal to   

-ne
---
not equal to   

-lt
---
less than   

-le
---
less than or equal to   

-gt
---
greater than   

-ge
---
greater than or equal to   

These arithmetic binary operators return true if the condition satisfied.   

Conditional Expressions string
===
字符串比较   

-z string
---
True if the length of string is zero.   

-n string
---
True if the length of string is non-zero   

string1 == string2
---
True if the strings are equal   

string1 = string2
---
same to ==   

string1 != string2
---
True if the strings are not equal   

string1 > string2
---
True if string1 sorts after string2 lexicographically.   

string1 < string2
---
True if string1 sorts before string2 lexicographically.   
\>和<需进行转义，否则shell当作重定向符号，即\\>或\\<。   

Variables
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

***

an example for
===
code
---
#!/bin/bash   
   
for file in \`find ~/share\`   
do    
    if [ -d "$file" ]   
    then   
        echo "$file is a direcotory"   
    elif [ -f "$file" ]   
    then   
        echo "$file is a file"   
    fi   
done    

input
---
./testfor.sh

output
---
/home/roger/share is a direcotory   
/home/roger/share/doc is a direcotory   
/home/roger/share/doc/config is a file   
/home/roger/share/txt_testif.txt is a file   
/home/roger/share/testfor.sh is a file   
/home/roger/share/t.txt is a file   

Looping Constructs for
===
syntax in
---
for name [ [in [words ...] ] ; ] do commands; done

syntax C style
---
An alternate form of the for command is also supported:
for (( expr1 ; expr2 ; expr3 )) ; do commands ; done

Conditional Expressions file
===
文件比较   

-d file
---
True if file exists and is a directory.

-e file
---
True if file exists.

-f file
---
True if file exists and is a regular file.


***

an example for C style
===
code
---
#!/bin/bash   

for ((i=0; i<6; i++)); do   
　echo "Iteration $i"   
　　for ((j=0; j<3; j++)); do   
　　　　if [ $i -ge 1 ] && [ $i -le 3 ]; then   
　　　　　　break   
　　　　fi   
　　　　val=$[ $i * $j ]   
　　　　#val=${ $i * $j }   
　　　　echo "    The result of $i*$j is $val"   
　done   
done   

input
---
./testfor2.sh

output
---
Iteration 0   
　　The result of 0*0 is 0   
　　The result of 0*1 is 0   
　　The result of 0*2 is 0   
Iteration 1   
Iteration 2   
Iteration 3   
Iteration 4   
　　The result of 4*0 is 0   
　　The result of 4*1 is 4   
　　The result of 4*2 is 8   
Iteration 5   
　　The result of 5*0 is 0   
　　The result of 5*1 is 5    
　　The result of 5*2 is 10   

if "break" changed to "break 2", the output changed.   
Iteration 0   
　　The result of 0*0 is 0   
　　The result of 0*1 is 0   
　　The result of 0*2 is 0   
Iteration 1   

Bourne Shell Builtins
===
break [n]
---
跳出外部循环，n要跳出的循环等级。   
n默认为1，表明跳出当前循环。   

Exit from a for, while, until, or select loop.   
If n is supplied, the nth enclosing loop is exited.   
n must be greater than or equal to 1.   

continue [n]
---
Resume the next iteration of an enclosing for, while, until, or select loop.   
If n is supplied, the execution of the nth enclosing loop is resumed.   
n must be greater than or equal to 1.   

Multi-condition
===
expression1 && expression2
---
True if both expression1 and expression2 are true.

expression1 || expression2
---
True if either expression1 or expression2 is true.   

The && and || operators do not evaluate expression2 if the value of expression1 is sufficient to determine the return value of the entire conditional expression.


! expression
---
True if expression is false.


***

an example case
===
code
---
#!/bin/bash   

pswd=""   
for one in $@   
do   
    case $one in   
        "a" | "A")   pswd+="1";;   
        "b")   pswd+="2";;    
        "c")   pswd+="3";;     
        \*)   pswd+="*";;    
    esac   
done   

echo passwd is $pswd   

input
---
./testcase.sh a A b c d

output
---
passwd is 1123*

Conditional Constructs case
===
case word in [ [(] pattern [| pattern]…) command-list ;;]… esac


***

for
===

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


