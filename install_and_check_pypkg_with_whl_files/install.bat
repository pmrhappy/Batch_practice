setlocal EnableDelayedExpansion
@echo off

rem for /f "delims=" %%x in ('dir /b ^| findstr whl') do call pip install %%x

for /f "delims=" %%x in ('dir /b ^| findstr whl') do (
	set found=0
	set pkg_name=%%x
	set name=!pkg_name:~0,5!
	for /f "delims=" %%p in ('pip freeze') do (
		for /f "delims=" %%r in ('echo %%p ^| findstr !name!') do set found=1 )
	echo !found!
	if !found!==0 ( call :reinstall "%%x%" ) )
pip freeze
pause
exit /b

:reinstall
echo %1% are not installed... reinstalling...
call pip install %1%
exit /b