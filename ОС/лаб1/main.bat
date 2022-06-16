@echo off
@echo [---
@echo [1] - Make a group catalog.
@echo [2] - Exit.
@echo ---]
set /p choice="Input: "
if "%choice%"=="1" (goto func1)
if "%choice%"=="2" (goto exit)
if "%choice%"!="1" (goto exit)
if "%choice%"!="2" (goto exit)
:func1
set /p name="Put the group name: "

goto func2
:func2
set /p n="Put the quantity of students: "
set catalog=0
:1
set /a catalog=catalog+1
md C:\Users\User\Desktop\ОС\лаб1\%name%\Student%catalog%
if not %catalog%==%n% goto 1
start main.bat
goto exit
:exit
exit

