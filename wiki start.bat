@echo off
chcp 65001 > nul
cls

echo ======================================================
echo  OpenNAMU 서버를 시작하고 웹 브라우저를 엽니다.
echo ======================================================
echo.

REM /B 옵션을 사용하면 현재 창을 막지 않고 백그라운드에서 실행됩니다.
echo [1/3] OpenNAMU 서버를 새 창에서 시작합니다...
start "OpenNAMU Server" python app.py

echo.
echo [2/3] 서버가 켜질 때까지 3초간 기다립니다...
timeout /t 3 /nobreak > nul

echo.
echo [3/3] 웹 브라우저에서 https://www.google.com/url?sa=E&source=gmail&q=http://127.0.0.1:3000 주소를 엽니다.
start http://127.0.0.1:3000

echo.
echo ======================================================
echo  모든 작업이 완료되었습니다!
echo  새로 열린 검은 창에서 서버가 실행 중입니다.
echo ======================================================
echo.
pause