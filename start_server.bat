@echo off
cd /d "%~dp0"
echo.
echo  Tourinvest Group — HR Portal
echo  =============================
echo  http://localhost:7788
echo.
python -m http.server 7788 2>nul
if errorlevel 1 (
  echo Python not found. Trying Node.js...
  npx --yes serve -l 7788 .
)
pause
