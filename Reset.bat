@echo off
chcp 65001
color 0A
title ibrahimunaLife - Hızlı Temizlik v1.0

netsh winsock reset
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo WINSOCK KATALOGU SIFIRLANDI...
 
netsh winhttp reset proxy
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo PROXY AYARLARI SIFIRLANDI...

netsh int ip reset
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo IP YAPILANDIRMASINI SIFIRLANDI...

ipconfig /flushdns
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo DNS ON BELLEK TEMIZLENDI...

ipconfig /registerdns
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo DNS KAYDI YAPILDI...

ipconfig /release
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo DHCP'DEN GELEN IP BIRAKILDI...

ipconfig /renew
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo DHCP'DEN YENI IP ALINDI...

netsh advfirewall reset
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo GUVENLIK DUVARI AYARLARI SIFIRLANDI...

netsh int tcp set global autotuninglevel=normal
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo TCP OTOMATIK AYARLAMA OZELLIGI NORMAL OLARAK AYARLANDI...

netsh interface tcp set heuristics disabled
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo AG PERFORMANSI IYILESTIRILDI...

del /s /f /q "%userprofile%\Recent\*.*"
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo KULLANICI DOSYALARI TEMIZLENDI...

del /s /f /q "C:\Windows\Prefetch\*.*"
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo WINDOWS DOSYALARI TEMIZLENDI...

del /s /f /q "C:\Windows\Temp\*.*"
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo WINDOWS GECICI DOSYALAR TEMIZLENDI...

del /s /f /q "%userprofile%\appdata\local\temp\*.*"
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                         HIZLI TEMİZLİK ARACI                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo KULLANICI GECICI DOSYALAR TEMIZLENDI...

echo Tüm Adımlar Tamamlanmıştır. Çıkmak için bir tuşa basınız...
pause > nul
exit
