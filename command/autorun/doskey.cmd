@echo off
REM mode con: cols=120 lines=26


set /a a= %random%%%6
set /a r= %random%%%2
goto ignore
if %r%==10 set r=a
if %r%==11 set r=b
if %r%==12 set r=c
if %r%==13 set r=d
if %r%==14 set r=e
if %r%==15 set r=f

if %a%==0 set b=%r%%a%
if %a%==1 set b=%r%%a%
if %a%==2 set b=%r%%a%
if %a%==3 set b=%r%%a%
if %a%==4 set b=%r%%a%
if %a%==5 set b=%r%%a%
if %a%==6 set b=%r%%a%
if %a%==7 set b=%r%%a%
if %a%==8 set b=%r%%a%
if %a%==9 set b=%r%%a%
:ignore
if %r%==1 set r=f
set r=0
if %a%==0 set b=%r%a
if %a%==1 set b=%r%b
if %a%==2 set b=%r%c
if %a%==3 set b=%r%d
if %a%==4 set b=%r%e
if %a%==5 set b=%r%f
color %b%
doskey ls=dir
doskey py=python
doskey fuck=echo fuck you, too!!
doskey gb=git branch
doskey python3=C:\Anaconda3\python.exe
doskey py3=C:\Anaconda3\python.exe
