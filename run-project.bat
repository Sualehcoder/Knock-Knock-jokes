@echo off
echo Installing dependencies...
call npm install
if %errorlevel% neq 0 (
    echo Error installing root dependencies
    pause
    exit /b %errorlevel%
)

echo Installing server dependencies...
cd server
call npm install
if %errorlevel% neq 0 (
    echo Error installing server dependencies
    pause
    exit /b %errorlevel%
)
cd ..

echo Installing client dependencies...
cd client
call npm install
if %errorlevel% neq 0 (
    echo Error installing client dependencies
    pause
    exit /b %errorlevel%
)
cd ..

echo.
echo Starting the application...
echo Backend will run on http://localhost:5000
echo Frontend will run on http://localhost:3000
echo.
start "Backend Server" cmd /k "cd server && npm start"
timeout /t 3 /nobreak >nul
start "Frontend React App" cmd /k "cd client && npm start"
echo.
echo Both servers are starting in separate windows!
echo The website will open automatically in your browser.
pause

