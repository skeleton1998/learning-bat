@echo off
setlocal enabledelayedexpansion

set num=0
set flag=0
set /p userID="userID:"
for /f %%i in (account.txt) do (
    if flag==1(
    	pass=%%i
	break
    )
    if %%i==!userID! if num==0(
    	set flag=1
    )
    set num+=1
    set num=num%%2
)
if flag==0 set flag=2
:Password
set /p passIn="Password:"
if flag==1 if not passIn==%pass% goto Password
else(
    echo %userID%���񂱂�ɂ��́I
    goto LogIn
)
if flag==3(
    echo userID:%userID%
    echo Password:%pass%
    echo �@�@�@�@�œo�^���܂����H(Y/N)
    set /p ans=""
    if ans=="y" echo %userID% %pass% > account.txt
)
:Login
pause
