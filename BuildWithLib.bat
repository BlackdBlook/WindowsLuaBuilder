cl /O2 /W3 /c /DLUA_BUILD_AS_DLL l*.c
del lua.obj
link /DLL /out:luaLib.dll l*.obj
cl /O2 /W3 /c /DLUA_BUILD_AS_DLL lua.c
link /out:lua.exe lua.obj lua53.lib
del lua.obj
link /out:luac.exe l*.obj
