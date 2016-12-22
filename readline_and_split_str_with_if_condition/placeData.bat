@echo off
setlocal
cd %~dp0%
set obj_path=%1
set data_pattern=%2

REM get data_path by data_pattern from datainfo.ini
for /f "delims=" %%l in (datainfo.ini) do (
    for /f "tokens=1 delims==" %%p in ("%%l") do (
        if "%%p" == "%data_pattern%" for /f "tokens=2 delims==" %%r in ("%%l") do echo %%r
    )
) 
REM set data_path=..\data\example_data.txt
REM copy /Y %data_path% %obj_path% 1>nul

endlocal