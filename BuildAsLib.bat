@echo off

echo ------ buildObj ------

cl /O2 /W3 /c /DLUA_BUILD_AS_DLL l*.c

del lua.obj

echo ------ linkDll ------

link /DLL /out:luaLib.dll l*.obj

echo ------ buildObj ------

cl /O2 /W3 /c /DLUA_BUILD_AS_DLL lua.c

echo ------ buildExe ------

link /out:lua.exe lua.obj luaLib.lib

echo ------ cleanUp ------

del l*.obj
