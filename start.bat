@echo off
echo ==========================================
echo    INICIANDO LABORATÓRIO DEVSECOPS
echo ==========================================
echo.
echo Lendo arquivo .env e subindo conteineres...
docker-compose up -d

echo.
echo ==========================================
echo TUDO PRONTO!
echo.
echo [Frontend e API]  Acesse: http://localhost
echo [Monitoramento]   Acesse: http://localhost:3000
echo.
echo Pressione qualquer tecla para sair do instalador...
pause >nul