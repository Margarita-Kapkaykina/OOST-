@echo off

if "%~1"=="" (
  echo Error: specify directory and extension
  echo Example: 4.bat C:\Test txt
  exit /b
)

if "%~2"=="" (
  echo Error: specify file extension
  exit /b
)

set "path=%~1"
set "ext=%~2"

for %%f in (%path%\*.%ext%) do echo %%~nxf

exit /b