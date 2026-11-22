@echo off
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "D:\Backups y jobs\FullBackup.sql" -o "D:\Backups y jobs\log_full.txt"
