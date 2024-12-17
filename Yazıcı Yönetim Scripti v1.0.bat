@echo off
chcp 65001 >nul
color 0A
setlocal enabledelayedexpansion

>nul 2>&1 "%SystemRoot%\system32\cacls.exe" "%SystemRoot%\system32\config\system"
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

cls
echo.
echo =====================================
echo    İBRAHİM ÜNAL - ibrahimunaLife
echo    Yazıcı Yönetim Scripti v1.0
echo =====================================
echo.
echo Yazıcılar listeleniyor...
call :progress_animation
echo.

:: Yazıcıları listele ve sıralı bir şekilde göster
setlocal enabledelayedexpansion
set counter=1

:: Yazıcıları diziye kaydet
for /f "skip=1 tokens=*" %%a in ('wmic printer get Name ^| findstr /r /v "^$"') do (
    if not "%%a"=="" (
        set "printer[!counter!]=%%a"
        echo #!counter! - %%a
        set /a counter=!counter!+1
    )
)

:: Kullanıcıdan seçim alma
set /a maxPrinters=%counter%-1
echo.
choice /c 123456789 /n /m "Bir yazıcı numarasını seçin (1-%maxPrinters%): "

:: Seçimi yakala ve geçersiz seçim için hata kontrolü
if %ERRORLEVEL% lss 1 (
    echo Geçersiz seçim yapıldı, işlem sonlandırılıyor...
    timeout /t 2 >nul
    exit /b
)

set "selectedPrinter=%ERRORLEVEL%"
set "selectedPrinterName=!printer[%selectedPrinter%]!"

echo.
echo Seçilen Yazıcı: !selectedPrinterName!


:: Yazıcı Servisi Durduruluyor ve Animasyon Başlatma
echo Yazıcı Servisi Durduruluyor...
net stop spooler >nul 2>&1
call :progress_animation

:: Yazıcı kuyruğunu temizle
echo Yazıcı Kuyruğu Temizleniyor...
del /q /f "%systemroot%\System32\spool\PRINTERS\*.*" >nul 2>&1
if %errorlevel% neq 0 (
    echo Yazıcı kuyruğu temizlenemedi. Yönetici izni kontrol edin.
    pause
    exit /b
)
call :progress_animation

:: Yazıcı Servisi Yeniden Başlatılıyor
echo Yazıcı Servisi Yeniden Başlatılıyor...
net start spooler >nul 2>&1
call :progress_animation


:: Özel mesajla işlemi tamamla
echo.
echo Tüm işlemler başarıyla tamamlandı.
echo Çıkmak için herhangi bir tuşa basınız...
pause >nul
exit /b

:: Animasyon fonksiyonu
:progress_animation
set /a count=0
:loop
set /a count+=1
set "dots=*"
<nul set /p=!dots!
timeout /t 0 >nul
if !count! lss 10 goto loop
echo.
exit /b
