@echo off
set args=
:while

set arg=%2
if "%arg%"=="" goto end
set args=%args% %arg%
echo %args%
shift /2
goto while

:end
echo %1 %2 %3