@echo off

set min=
set max=

:input
set /p num=Enter integer number ( - to finish ): 

if "%num%"=="-" goto result

if not defined min (
    set min=%num%
    set max=%num%
) else (
    if %num% lss %min% set min=%num%
    if %num% gtr %max% set max=%num%
)

goto input

:result
echo Minimum value: %min%
echo Maximum value: %max%
pause