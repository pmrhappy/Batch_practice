color 0b
set p=%~dp0%
mysqldump --extended-insert=FALSE -u root -p***** database_name config > %p%\schema\config.sql
explorer %p%schema
