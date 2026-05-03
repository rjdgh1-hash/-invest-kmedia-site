@echo off
echo ==========================================
echo   GitHub 초기 연결 및 첫 커밋을 시작합니다...
echo ==========================================
git init
git add .
git commit -m "initial commit: 인베스트교육개발원 사이트 v1"
git branch -M main
echo.
echo [주의] 아래 URL을 본인의 실제 GitHub 주소로 수정한 뒤 실행하세요!
git remote add origin https://github.com/your-username/invest-kmedia-site.git
echo.
echo GitHub 인증 창이 뜨면 승인해 주세요...
git push -u origin main
echo.
echo ==========================================
echo   작업이 완료되었습니다!
echo ==========================================
pause
