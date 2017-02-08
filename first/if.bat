@echo off
setlocal enabledelayedexpansion

set a=0
for /l %%i in (1,1,10) do (
	set /a a+=1
	set /a b=a%%3
	if !b!==0 echo !a!
)
pause
