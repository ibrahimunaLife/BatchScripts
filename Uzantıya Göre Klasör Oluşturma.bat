@echo off
chcp 65001
cls

color 0A

echo ***********************************************************************
echo    UZANTIYA GÖRE KLASÖR OLUŞTURMA - İBRAHİM ÜNAL - ibrahimunaLife
echo ***********************************************************************
setlocal enabledelayedexpansion

rem Güncel tarihi al ve formatla
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set "datetime=%%i"
set "year=!datetime:~0,4!"
set "month=!datetime:~4,2!"
set "day=!datetime:~6,2!"
set "dateTag=!year!-!month!-!day!"

rem Mevcut dizindeki tüm dosyaları dolaş
for %%F in (*) do (
    rem Dosya uzantısını al
    set "ext=%%~xF"
    rem Uzantıdan nokta karakterini kaldır
    set "folderName=!dateTag! - !ext:~1!"
    rem Uzantı klasörü oluştur
    if not exist "!folderName!" (
        mkdir "!folderName!"
    )
    rem Dosyayı ilgili klasöre taşı
    move "%%F" "!folderName!\" 
)

endlocal
