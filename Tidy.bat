@echo off

setlocal

set RootDir=.

echo Deleting temporary files

del /S %RootDir%\*.~* 
del /S %RootDir%\*.bak
del /S %RootDir%\*.ddp 
del /S %RootDir%\*.dsk 
del /S /AH %RootDir%\*.GID 
del /S %RootDir%\*.identcache
del /S %RootDir%\*.local
del /S %RootDir%\*.tmp
echo.

echo Deleting build and history sub-directories

if exist %RootDir%\bin rmdir /S /Q %RootDir%\bin

for /F "usebackq" %%i in (`dir /S /B /A:D %RootDir%\__history*`) do rmdir /S /Q %%i

echo Done.

endlocal
