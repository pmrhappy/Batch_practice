setlocal
@echo off
echo "if not so many files you can use findstr /s /n "XXX" *.*"
echo "usage: <root_path> <keyword> <file_name_fileter:include>"
echo e.g.: findstr_recursively.bat . 'something' '.py'

rem cd %~dp0%
if "%1" NEQ "" cd %1

for /f "delims=" %%d in ('dir /b /ad /s') do findstr /n /c:%2 %%d\* | findstr %3

endlocal