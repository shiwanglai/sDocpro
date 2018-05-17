
参考
===
https://docs.python.org/3/distutils/index.html    

目录结构
===
mhello    
  -- setup.py    
  -- mhello.py    

文件内容
===
setup.py    
---
from distutils.core import setup    

setup(    
    name='mhello',    
    version='1.0',    
    description='A simple example',    
    author='Roger Shi',    
    py_modules=['mhello']    
)    

mhello.py
---
print("mhello!)    

安装
===
$ python setup.py install    
running install    
running build    
running build_py    
running install_lib    
copying build\lib\mhello.py -> c:\Tools\Anaconda3\Lib\site-packages    
byte-compiling c:\Tools\Anaconda3\Lib\site-packages\mhello.py to mhello.cpython-36.pyc    
running install_egg_info    
Writing c:\Tools\Anaconda3\Lib\site-packages\mhello-1.0-py3.6.egg-info    

使用
===
import mhello    
输出：mhello!    


