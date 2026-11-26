@echo off
sqlcmd -S .\SQLEXPRESS -E -C -b -i "D:\Backups\Copias_JhersonAlaya.sql" -o "D:\Backups\Registro_JhersonAlaya.txt"
