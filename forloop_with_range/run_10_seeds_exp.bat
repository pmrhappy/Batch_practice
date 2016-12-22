title simulator.exe
cd %~dp0%

for /l %%x in (10, 1, 100) do (
  echo cmd /c .\Release\main_scheduler\src\simulator.o.exe %%x ^> output_%%x%.txt
  ping 127.0.0.1 -n 2 >nul
)
echo finished!! ^_________^
pause