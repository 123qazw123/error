Format PE GUI 4.0
entry start
include 'C:\FASM\INCLUDE\win32axp.inc'
section '.code' code readable executable
string: db 'Error!', 0
string2: db 'YES!', 0
start:
invoke MessageBox, 0, string, string2, MB_ICONERROR
jmp start
invoke ExitProcess, 0
section '.idata' import data readable writeable
library kernel, 'KERNEL32.DLL',\
user, 'USER32.DLL'
import kernel,\
ExitProcess, 'ExitProcess'
import user,\
MessageBox, 'MessageBoxA'