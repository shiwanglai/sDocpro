gnu-doc reference
===
https://www.gnu.org/software/gawk/manual/gawk.html

***

Usage
===
awk 'program' file ...    
---
program where program consists of a series of patterns and actions    

awk 'pattern {action}' file
---
a common form    
awk '{print $0}' help.txt    
or         
echo help | awk '{print $0}'    

awk --help for more info    

Examples
===

