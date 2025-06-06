@echo off
echo Building and running calculator tests...
echo.

REM Set environment variables for Delphi
SET BDS=C:\Program Files (x86)\Embarcadero\Studio\23.0
SET BDSINCLUDE=C:\Program Files (x86)\Embarcadero\Studio\23.0\include
SET BDSCOMMONDIR=C:\Users\Public\Documents\Embarcadero\Studio\23.0
SET FrameworkDir=C:\Windows\Microsoft.NET\Framework\v4.0.30319
SET FrameworkVersion=v4.5
SET FrameworkSDKDir=
SET PATH=%FrameworkDir%;%FrameworkSDKDir%;C:\Program Files (x86)\Embarcadero\Studio\23.0\bin;C:\Program Files (x86)\Embarcadero\Studio\23.0\bin64;C:\Program Files (x86)\Embarcadero\Studio\23.0\cmake;%PATH%
SET LANGDIR=EN
SET PLATFORM=
SET PlatformSDK=

REM Compile the test runner
echo Compiling test runner...
dcc32 TestRunner.dpr

REM Check if compilation was successful
if errorlevel 1 (
    echo.
    echo Compilation failed!
    pause
    exit /b 1
)

echo.
echo Compilation successful! Running tests...
echo.

REM Run the tests
TestRunner.exe

echo.
echo Tests completed.
pause