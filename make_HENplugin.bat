@echo off
cls
set PS3SDK=/c/PSDK3v2
set WIN_PS3SDK=C:/PSDK3v2
set PS3DEV=%PS3SDK%/ps3dev2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%PS3DEV%/ppu/bin;
set CYGWIN=C:\PSDK3v2\MinGW\msys\1.0\bin

rm *.prx *.sprx
%CYGWIN%\bash -i -c 'make release'
pause