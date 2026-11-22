@echo off
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "D:\Backups y jobs\DiffBackup.sql" -o "D:\Backups y jobs\log_diff.txt"

