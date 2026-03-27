@ECHO OFF

IF "%1"=="" EXIT /B 1
IF "%2"=="" EXIT /B 1

git config --global user.name "%1"
git config --global user.email "%2"

PAUSE >nul

git config --global --unset user.name
git config --global --unset user.email