@echo off
chcp 65001 > nul
cls

echo ======================================================
echo  OpenNAMU 위키를 GitHub에 백업합니다.
echo ======================================================
echo.

REM 현재 배치 파일이 있는 폴더로 경로를 자동으로 이동합니다.
cd /d "%~dp0"

echo [1/4] 현재 폴더 위치:
cd
echo.

REM 백업 메모(커밋 메시지)를 입력받습니다.
echo [2/4] 이번 백업에 대한 간단한 메모를 입력하고 Enter를 누르세요.
echo (예: 메인 페이지 수정) 그냥 Enter를 누르면 '자동 백업'으로 저장됩니다.
set /p commit_message="메모: "

REM 만약 아무것도 입력하지 않았다면 기본 메시지를 사용합니다.
IF "%commit_message%"=="" SET commit_message=자동 백업

echo.
echo [3/4] Git 백업을 시작합니다...
echo ------------------------------------------------------

REM Git 명령어들을 순서대로 실행합니다.
git add .
git commit -m "%commit_message%"
git push origin main

echo ------------------------------------------------------
echo.
echo [4/4] GitHub 백업이 완료되었습니다!
echo.
echo ======================================================
pause