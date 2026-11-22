@echo off
sqlcmd -S "(localdb)\MSSQLLocalDB" -i "D:\Backups y jobs\RevisiondeBackup.sql" -o "D:\Backups y jobs\resultado_revision.txt"

