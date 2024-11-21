@echo off

REM Check if the driver is already installed
pnputil /enum-devices | findstr /i /C:"AMD Radeon(TM)" > nul
if %errorlevel%==0 (
    echo Driver already installed, skipping installation.
) else (
    echo Installing driver...
    C:\Users\blah\Downloads\sp153673.exe /s
)

exit