color 0e
@echo off
setlocal
SET /P table_name=Please enter the table's name you want to dump:
mysqldump -uroot -p***** -t -Tc:\csv_dump\ 701826 %table_name% --fields-terminated-by=,
cd c:\csv_dump
rename %table_name%.txt %table_name%.csv
endlocal