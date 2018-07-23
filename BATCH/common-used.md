
Comments
===
::   
rem   

Lables
===
:label_name   

echo
===
echo [{on|off}] [message]   
---
echo hello   
@echo off   
echo cycle=%cycle%   

Sample
---
@echo off   
echo hello world   

Some
===
pause
---
pause and show Press any key to continue...   

timeout
---
timeout n   
delay n-1 seconds   

goto
---
goto label

start
---
start bat or 

call
---
call bat or 

%n%
---
%1%, the first input params of the bat

\>,>>,<
---
ping 127.0.0.1 > nul


set
===
set
---
show the defined variables

set vname
---
set cycle=1

set /a
---
set /a cycle=cycle+1

set /p
---
set /p num=please input your choice(0-9):

if
===
if condition (command)

Sample
---
if %cycle% equ 500 goto end


for
===
for /f

