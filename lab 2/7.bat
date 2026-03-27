@echo off

if "%~1"=="" exit /b
if "%~2"=="" exit /b

for %%f in ("%~1\*") do (
    if exist "%~2\%%~nxf" echo %%~nxf
)