
gnu-doc reference
===
http://www.gnu.org/software/bash/manual/

the entire command line
===
#!/bin/bash

variable
===
${variable_name}   
变量赋值=前后不能有空格。   

samples
---
skill="Java"   
echo "I am good at ${skill}Script"

params
===
$@, all params   
$#, the number of params   
$1, $2 .., the 1st, 2nd .. param   

samples
---
./bashtestp.sh aa bb   
the number of params is 2.   

comments
===
single line   
\#   
block   


if
===
The syntax of the if command is:   
if test-commands; then   
consequent-commands;   
[elif more-test-commands; then   
more-consequents;]   
[else alternate-consequents;]   
fi    

for example, to check whether input params include "aa":   
if [[ $@ == *"aa"* ]]; then   
    echo "do aa"   
if   

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


