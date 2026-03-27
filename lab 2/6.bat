@echo off

if "%~1"=="" exit /b

set /a count=0

for /d /r "%~1" %%d in (*) do (
    set /a count+=1
)

echo %count%