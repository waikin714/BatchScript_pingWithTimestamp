@echo off
set ip=127.0.0.1
set address="C:\pingtext.txt"
echo pinging %ip%
echo log into %address%
ping -t %ip%|cmd /q /v /c "(pause&pause)>nul & for /l %%a in () do (set /p "data=" && echo(!date! !time! !data!)&ping -n 2 %ip%>nul" >%address%
