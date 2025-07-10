@echo off
setlocal

:: Check for Gradle Wrapper
if not exist "gradlew.bat" (
    echo Error: gradlew.bat not found in current directory
    pause
    exit /b 1
)

:: Run build with clean and stacktrace
echo Starting build with cleanup...
call gradlew clean build --stacktrace

:: Check build result
if %ERRORLEVEL% equ 0 (
    echo.
    echo Build completed successfully!
) else (
    echo.
    echo BUILD FAILED! Error code: %ERRORLEVEL%
)

pause
endlocal