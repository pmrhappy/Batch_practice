setlocal ENABLEDELAYEDEXPANSION
mkdir uploads\files
call Powershell.exe -executionpolicy remotesigned -File .\uploads\unzip.ps1

for %%x in (%*) do set param=!param! %%x%
call python %param%  >> output.txt

endlocal