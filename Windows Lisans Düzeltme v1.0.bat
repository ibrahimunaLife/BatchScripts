@echo off
chcp 65001
title ibrahimunaLife - Windows Lisans Düzeltme v1.0
cls

:: Renk Ayarı: Yeşil
color 0A
:menu
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                        WİNDOWS LİSANS DÜZELTME                       ║
echo ╚══════════════════════════════════════════════════════════════════════╝
@echo off
echo [1/4] LicenseManager servisi otomatik başlatılıyor...
sc config LicenseManager start= auto
net start LicenseManager

echo [2/4] Windows Update (wuauserv) servisi otomatik başlatılıyor...
sc config wuauserv start= auto
net start wuauserv

echo [3/4] Ürün anahtarı uygulanıyor...
changepk.exe /productkey VK7JG-NPHTM-C97JM-9MPGT-3V66T

echo [4/4] İşlem tamamlandı. Aktivasyon için ayarlara göz atabilirsiniz.

:cikis
echo Teşekkür ederim - ibrahimunaLife
echo.
echo.
echo.
timeout /t 5 > nul
exit