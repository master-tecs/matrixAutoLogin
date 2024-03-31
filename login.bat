@echo off

REM Path to the hidden credentials file
set "credentials_file=.login"

REM Check if the credentials file exists
if exist "%credentials_file%" (
    echo Credentials file found: %credentials_file%

    REM Read the username and password from the file
    for /f "tokens=1,2 delims=:" %%A in (%credentials_file%) do (
        set "username=%%A"
        set "password=%%B"
    )

    REM Displaying username for debugging purposes
    echo Username: %username%
    
    REM Server details
    set "server=%username%@matrix.senecapolytechnic.ca"

    REM Prompt for login
    set /p "answer=Do you want to login to Matrix (y/n)? "
    if /i "%answer%"=="y" (
        REM Attempt SSH login to Matrix
        echo Attempting SSH login to Matrix...
        echo %password% | plink -ssh %server%
    ) else (
        echo Bye, not logging in to Matrix.
        exit /b 0
    )
) else (
    echo Credentials file not found. Please ensure the credentials file '%credentials_file%' exists.
    exit /b 1
)

exit /b 0
