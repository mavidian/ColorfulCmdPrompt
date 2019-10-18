@echo off
cls

echo This sample job invokes two tasks, for example .NET console apps.
REM The tasks are simulated by FirstTask.bat and SecondTask.bat batch files

call SetTextColor green
call FirstTask.bat

call SetTextColor yellow
call SecondTask.bat

call SetTextColor

echo Both tasks have completed.
pause
