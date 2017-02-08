@echo off
setlocal enabledelayedexpansion

for %%i in (*.*) do (
	echo %%i >> FileList.txt
)
set num=0
for /r .\renames\ %%j in (*.*) do (
	set /a num+=1
	echo %%j renames to >> RenameList.txt
	echo File!num!.txt >> RenameList.txt
	rename %%j File!num!.txt
)
pause
