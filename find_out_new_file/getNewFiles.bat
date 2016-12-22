@echo off
setlocal
set obj_dir=%1
cd %obj_dir%

git init >nul
git add . >nul
git commit -m "--" >nul
call time_file.bat
call time_file.bat
git add .
git status | findstr "new" > difference.txt
for /f "delims=" %%x in (difference.txt) do echo %%x
endlocal