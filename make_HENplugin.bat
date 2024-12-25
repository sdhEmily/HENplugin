@echo off
cls
set PS3SDK=/c/PSDK3v2   q
set WIN_PS3SDK=C:/PSDK3v2
set PS3DEV=%PS3SDK%/ps3dev2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%PS3DEV%/ppu/bin;
set CYGWIN=C:\PSDK3v2\MinGW\msys\1.0\bin



:: thanks to https://github.com/kapodamy/HENtranslationTools
HEN_UNGEN PS3HEN.BIN 
if %ERRORLEVEL% EQU -1 echo Please place PS3HEN.BIN into this directory. && pause && exit
rm *.prx *.sprx
%CYGWIN%\bash -i -c 'make release'
HEN_GEN PS3HEN.BIN stage2.bin stage0.bin HENplugin.sprx
if %ERRORLEVEL% EQU 0 echo PS3HEN.BIN was updated with your HENplugin build.
pause