@echo off
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "D:\Backups y jobs\LogBackup.sql" -o "D:\Backups y jobs\log_trn.txt"


