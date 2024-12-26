@echo off
chcp 65001
color 0A
title ibrahimunaLife - 4 Ekran Ping Atma v1.0

cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                        ÇOKLU EKRAN PING ATMA                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo.

:: Kullanıcıdan iki farklı IP adresi al
set /p ping_ip1="1. Ping Atılacak IP adresini Girin: "
set /p ping_ip2="2. Ping Atılacak IP adresini Girin: "

:: Boş girişler için varsayılan değer belirleme
if "%ping_ip1%"=="" set ping_ip1=1.1.1.1
if "%ping_ip2%"=="" set ping_ip2=1.1.0.1


:: Windows Terminal'i başlat
start wt -M ^
 -p "Command Prompt" --suppressApplicationTitle --title "Ping: %ping_ip1%" cmd /k "ping /t %ping_ip1%" ;^
 sp -V -p "Command Prompt" --suppressApplicationTitle --title "Ping: %ping_ip2%" cmd /k "ping /t %ping_ip2%" ;^
 sp -H -p "Command Prompt" --suppressApplicationTitle --title "Ping: 8.8.8.8" cmd /k "ping /t 8.8.8.8" ;^
 sp -H -p "Command Prompt" --suppressApplicationTitle --title "Ping: www.google.com" cmd /k "ping /t www.google.com"