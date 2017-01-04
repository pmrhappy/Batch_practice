@echo off
setlocal
for /f "delims=" %%x in (pkg_needed.txt) do ( 
	if "%%x%"=="[in wheel files]" exit /b
	pip install %%x 
)
endlocal