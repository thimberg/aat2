@echo off

set PRGRAMID=%1

cd ..\src\%PRGRAMID%\

CBL /M /Ccon /Dy /NOWARNING /O1 /Hsx /I..\..\copy\ /Fo..\..\lib\ /Fe..\..\lib\ /lf..\..\list\ /t..\..\tmp\ %PRGRAMID%.cob ..\..\lib\*.lib

cd ..\..\lib

%PRGRAMID%.exe

cd ..\mak\

PAUSE
