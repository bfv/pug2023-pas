@echo off

echo begin restart
time /T

call %~dp0bin\tcman.bat stop
del %~dp0logs\*.* /q /s
rem pause

call %~dp0bin\tcman.bat start -v

echo end restart
time /T
