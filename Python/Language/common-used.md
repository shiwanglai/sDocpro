***
# 8 Compound statements
***
https://docs.python.org/3/reference/compound_stmts.html    

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

Function definitions
===
def funcname ([parameter_list]) : suite   

def func():   
　　pass   
func()    

Class definitions
===
class classname [inheritance] : suite   

例如：   
class foo:   
　　def \_\_init\_\_(self, hour=12):   
　　　　self.hour = hour   
　　def hello(self):   
　　　　print("hello")   

class bar(foo):   
　　def \_\_init\_\_(self, year=2018, hour=12):   
　　　　foo.__init__(self, hour)   
　　　　self.year = year   
　　def hi(self):   
　　　　print("hi")   


