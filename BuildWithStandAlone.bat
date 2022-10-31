cl /O2 /W3 /c l*.c
link /out:lua.exe l*.obj
del l*.obj
