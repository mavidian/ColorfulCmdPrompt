@echo off
cls

echo This sample job invokes two tasks, for example .NET console apps.
REM The tasks are simulated by FirstTask.bat and SecondTask.bat batch files

echo.
call FirstTask.bat
echo.
call SecondTask.bat
echo.

echo Both tasks have completed.
pause
