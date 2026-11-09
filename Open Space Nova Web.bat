@echo off
setlocal
set "PAGE=%~dp0Space Nova Web.html"
if not exist "%PAGE%" (
  echo Space Nova Web.html was not found next to this launcher.
  pause
  exit /b 1
)
set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" goto launch_chrome
set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" goto launch_chrome
set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if exist "%CHROME%" goto launch_chrome
rem Chrome was not found in its usual installation folders; use the default browser.
start "" "%PAGE%"
exit /b 0
:launch_chrome
start "" "%CHROME%" --new-window "%PAGE%"
exit /b 0
