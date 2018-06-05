***
# Compound statements
***

if
===
if expression : suite   
[elif expression : suite]   
[else : suite]   

例如：   
if x < y : print(x)   

if x < y :   
    print("less")   
elif x == y :    
    print("equal")   
else:   
    print("more")   

while
===
while expression : suite   
[else : suite]   

例如：   
while i < 10 : print(i); i = i + 1    
输出同：    
while i < 10 :   
    print(i)   
    i = i + 1   

for
===
for target_list in expression_list : suite   
[else : suite]   

例如：   
for i in range(10) : print(i)    
输出同：    
for i in range(10) :    
    print(i)    

