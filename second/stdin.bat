@echo off

dir c:\
set findarea=c:\
:loop 
set uri=%findarea%
set uri_prev=%uri%
set /p findarea="調べたい場所："
if "%findarea%"==" " exit /b 0
set findarea=%uri%%findarea%\
echo dir %findarea%
dir %findarea%
if not %errorlevel%==0 set findarea=%uri_prev%
goto loop
pause
