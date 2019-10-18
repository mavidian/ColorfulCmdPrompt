@echo off
cls

echo This sample job invokes two tasks, for example .NET console apps.
REM The tasks are simulated by FirstTask.bat and SecondTask.bat batch files

REM Set text color to green
echo [0;92m
call FirstTask.bat
REM Set text color to yellow
echo [0;93m
call SecondTask.bat
REM Reset text color
echo [0m

echo Both tasks have completed.
pause
