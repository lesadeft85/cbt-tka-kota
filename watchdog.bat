@echo off
:: ============================================================
:: watchdog.bat - Auto-restart Nginx + PHP-CGI + MySQL
:: TKA Kecamatan — Optimized for 1000 Students
:: 3 PHP-CGI instances x 30 workers = 90 parallel PHP processes
:: ============================================================

SET APP_DIR=%~dp0
SET NGINX_EXE=%APP_DIR%bin\nginx\nginx-1.28.2\nginx.exe
SET NGINX_DIR=%APP_DIR%bin\nginx\nginx-1.28.2
SET NGINX_CONF=%APP_DIR%bin\nginx\nginx-1.28.2\conf\nginx.conf
SET PHP_EXE=%APP_DIR%bin\php\php-8.3.30-Win32-vs16-x64\php-cgi.exe
SET MYSQLADMIN=%APP_DIR%bin\mysql\mysql-8.4.3-winx64\bin\mysqladmin.exe
SET MYSQL_SERVICE=TKAMySQL
SET WSCRIPT=%SystemRoot%\System32\wscript.exe
SET TIMEOUT=%SystemRoot%\System32\timeout.exe
SET NETSTAT=%SystemRoot%\System32\netstat.exe
SET LOG=%APP_DIR%logs\watchdog.log

:: ── PHP Worker Config ─────────────────────────────────────────
:: 3 instance x 30 anak = 90 proses PHP paralel
:: Tiap proses ~25MB RAM → total ~2.25GB untuk PHP
SET PHP_FCGI_CHILDREN=30
SET PHP_FCGI_MAX_REQUESTS=1000

:: Port untuk masing-masing instance PHP-CGI
SET PHP_PORT1=10987
SET PHP_PORT2=10988
SET PHP_PORT3=10989

:: Batas log 1MB — hapus jika terlalu besar
FOR %%F IN ("%LOG%") DO IF %%~zF GTR 1048576 DEL /F /Q "%LOG%"

CALL :LOG "========================================"
CALL :LOG "Watchdog dimulai — 3 instance PHP-CGI"
CALL :LOG "Workers per instance : %PHP_FCGI_CHILDREN%"
CALL :LOG "Total PHP workers    : 90"
CALL :LOG "========================================"

:: ── First launch: pastikan semua instance berjalan ───────────
CALL :START_PHP %PHP_PORT1%
CALL :START_PHP %PHP_PORT2%
CALL :START_PHP %PHP_PORT3%
CALL :START_NGINX

:LOOP
    :: Tunggu 20 detik sebelum cek berikutnya
    "%TIMEOUT%" /t 20 /nobreak >nul

    :: ── Cek PHP-CGI instance 1 ───────────────────────────────
    CALL :CHECK_PHP %PHP_PORT1%

    :: ── Cek PHP-CGI instance 2 ───────────────────────────────
    CALL :CHECK_PHP %PHP_PORT2%

    :: ── Cek PHP-CGI instance 3 ───────────────────────────────
    CALL :CHECK_PHP %PHP_PORT3%

    :: ── Cek Nginx ────────────────────────────────────────────
    %SystemRoot%\System32\tasklist.exe /FI "IMAGENAME eq nginx.exe" 2>nul | %SystemRoot%\System32\find.exe /I "nginx.exe" >nul
    IF ERRORLEVEL 1 (
        CALL :LOG "Nginx mati — restart"
        CALL :START_NGINX
    )

    :: ── Cek MySQL ────────────────────────────────────────────
    "%MYSQLADMIN%" -uroot --port=3307 --host=127.0.0.1 --connect-timeout=3 ping >nul 2>&1
    IF ERRORLEVEL 1 (
        CALL :LOG "MySQL mati — restart service"
        net start %MYSQL_SERVICE% >nul 2>&1
        "%TIMEOUT%" /t 5 /nobreak >nul
    )

GOTO LOOP

:: ── Subroutine: cek satu port PHP-CGI ────────────────────────
:CHECK_PHP
    SET _PORT=%1
    "%NETSTAT%" -ano | %SystemRoot%\System32\find.exe "%_PORT%" | %SystemRoot%\System32\find.exe "LISTENING" >nul
    IF ERRORLEVEL 1 (
        CALL :LOG "PHP-CGI port %_PORT% mati — restart"
        CALL :START_PHP %_PORT%
    )
    EXIT /B 0

:: ── Subroutine: start satu instance PHP-CGI ──────────────────
:START_PHP
    SET _PORT=%1
    "%WSCRIPT%" "%APP_DIR%run_hidden.vbs" "%PHP_EXE%" "-b 127.0.0.1:%_PORT%"
    "%TIMEOUT%" /t 2 /nobreak >nul
    CALL :LOG "PHP-CGI instance dimulai di port %_PORT% (%PHP_FCGI_CHILDREN% workers)"
    EXIT /B 0

:: ── Subroutine: start Nginx ───────────────────────────────────
:START_NGINX
    "%WSCRIPT%" "%APP_DIR%run_hidden.vbs" "%NGINX_EXE%" "-p ""%NGINX_DIR%"" -c ""%NGINX_CONF%"""
    "%TIMEOUT%" /t 2 /nobreak >nul
    CALL :LOG "Nginx dimulai"
    EXIT /B 0

:: ── Fungsi log ────────────────────────────────────────────────
:LOG
    echo [%DATE% %TIME%] %~1 >> "%LOG%"
    EXIT /B 0
