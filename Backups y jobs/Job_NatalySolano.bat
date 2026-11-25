@echo off
sqlcmd -S "localhost\SQLEXPRESS" -C -i "C:\Backups_Jobs\FullBackup_NatalySolano.sql" -o "C:\Backups_Jobs\log_general.txt"
sqlcmd -S "localhost\SQLEXPRESS" -C -i "C:\Backups_Jobs\DiffBackup_NatalySolano.sql" >> "C:\Backups_Jobs\log_general.txt"
sqlcmd -S "localhost\SQLEXPRESS" -C -i "C:\Backups_Jobs\LogBackup_NatalySolano.sql" >> "C:\Backups_Jobs\log_general.txt"