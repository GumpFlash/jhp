@echo off
cd /D %~dp0
echo Please dont close Window while MySQL is running
echo MySQL is trying to start
echo Please wait  ...
echo MySQL is starting with mysql\bin\my.ini (console)

mysql\bin\mysqld --defaults-file=mysql\bin\my.ini --standalone --console

if errorlevel 1 goto error
goto finish

:error
echo MySQL could not be started
:finish