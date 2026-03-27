@echo off

if "%~1"=="" exit /b

set n=%~1

if %n% lss 0 (
    echo Error: negative value
    exit /b
)

if %n% gtr 12 (
    echo Error: value too large
    exit /b
)

set result=1
set i=1

:loop
if %i% gtr %n% goto end

set /a result=result*i
set /a i=i+1
goto loop

:end
echo %result%