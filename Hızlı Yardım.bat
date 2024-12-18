@echo off
chcp 65001
title ibrahimunaLife - Hızlı Yardım Aracı v1.0
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
echo ║                          HIZLI YARDIM ARACI                          ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo [1] Sistem Bilgileri ve Durum Görüntüleme
echo [2] Disk ve Depolama Yönetimi
echo [3] Windows Güncelleme ve Bakım İşlemleri
echo [4] Ağ ve Bağlantı Yönetimi
echo [5] Kullanıcı Hesapları Yönetimi
echo [6] Güvenlik ve Güvenlik Duvarı Yönetimi
echo [7] Performans ve Optimizasyon
echo [8] Yedekleme ve Kurtarma
echo [0] Çıkış
echo ===============================
set /p secim=Seciminizi girin:

if %secim%==1 goto sistem_bilgileri
if %secim%==2 goto disk_yonetimi
if %secim%==3 goto windows_bakim
if %secim%==4 goto ag_yonetimi
if %secim%==5 goto kullanici_yonetimi
if %secim%==6 goto guvenlik
if %secim%==7 goto performans
if %secim%==8 goto yedekleme
if %secim%==0 goto cikis

:sistem_bilgileri
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                SİSTEM BİLGİLERİ VE DURUM GÖRÜNTÜLEME                 ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Bilgisayar Seri Numarasını, Adını, Marka ve Modelini Göster
echo [2] IP Adresini Görüntüle
echo [3] Windows Lisans Durumunu Göster
echo [4] Sistem Bilgilerini Görüntüle
echo [5] Windows Sürüm Bilgisi (winver)
echo [6] Son Format Tarihini Göster
echo [7] CPU Bilgilerini Göster
echo [8] Bellek (RAM) Kullanımını Göster
echo [9] Depolama Alanı Durumunu Göster
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin: 

if %secim%==1 (
    echo.
    echo Bilgisayar Adı:
    hostname
    echo.
    echo BIOS Seri Numarası:
    wmic bios get serialnumber
    echo.
    echo İşlemci Bilgisi:
    wmic cpu get name
    pause
)
if %secim%==2 ipconfig & pause
if %secim%==3 slmgr /xpr & pause
if %secim%==4 systeminfo & pause
if %secim%==5 start winver & pause
if %secim%==6 wmic os get installdate & pause
if %secim%==7 wmic cpu get name,maxclockspeed & pause
if %secim%==8 wmic os get freephysicalmemory,totalvisiblememorysize & pause
if %secim%==9 wmic logicaldisk get size,freespace,caption & pause
if %secim%==0 goto menu
goto sistem_bilgileri

:disk_yonetimi
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                      DİSK DEPOLAMA VE YÖNETİMİ                       ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Disk Durumunu Kontrol Et
echo [2] Sabit Diski Tarama (chkdsk)
echo [3] Disk Temizliği Başlat (cleanmgr)
echo [4] Gereksiz Dosyaları Temizle
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 wmic diskdrive get status & pause
if %secim%==2 chkdsk C: & pause
if %secim%==3 cleanmgr & pause
if %secim%==4 del /q/f/s %TEMP%\* & pause
if %secim%==0 goto menu
goto disk_yonetimi

:windows_bakim
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                WINDOWS GÜNCELLEME VE BAKIM İŞLEMLERİ                 ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Windows Güncelleme Durumunu Göster
echo [2] Windows Sistem Dosyalarını Onar
echo [3] Yüklü Programları Güncelle
echo [4] Windows Store Uygulamalarını Güncelle
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 usoclient StartScan & pause
if %secim%==2 sfc /scannow & pause
if %secim%==3 echo Manuel yapılmalı! & pause
if %secim%==4 start ms-windows-store://downloadsandupdates & pause
if %secim%==0 goto menu
goto windows_bakim

:ag_yonetimi
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                       AĞ VE BAĞLANTI YÖNETİMİ                        ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Ağ DNS Önbelleğini Temizle
echo [2] Ping Testi Yap
echo [3] Tracert (Yol İzleme) Yap
echo [4] Nslookup (DNS Sorgulaması) Yap
echo [5] IP Yapılandırmasını Görüntüle
echo [6] IP Yapılandırmasını Serbest Bırak
echo [7] IP Yapılandırmasını Yenile
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 ipconfig /flushdns & pause
if %secim%==2 set /p ip=Ping yapmak için IP veya Alan Adı: & ping %ip% & pause
if %secim%==3 set /p ip=Yol izlemek için IP veya Alan Adı: & tracert %ip% & pause
if %secim%==4 set /p alan=DNS sorgulaması yapmak için Alan Adı: & nslookup %alan% & pause
if %secim%==5 ipconfig /all & pause
if %secim%==6 ipconfig /release & pause
if %secim%==7 ipconfig /renew & pause
if %secim%==0 goto menu
goto ag_yonetimi

:kullanici_yonetimi
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                     KULLANICI HESAPLARI YÖNETİMİ                     ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Kullanıcı Hesaplarını Listele
echo [2] Kullanıcı Şifresini Değiştir
echo [3] Yeni Kullanıcı Ekle
echo [4] Kullanıcı Hesabını Sil
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 net user & pause
if %secim%==2 set /p kullanici=Kullanıcı Adı: & set /p sifre=Yeni Şifre: & net user %kullanici% %sifre% & pause
if %secim%==3 set /p yeni=Yeni Kullanıcı Adı: & set /p sifre=Şifre: & net user %yeni% %sifre% /add & pause
if %secim%==4 set /p sil=Silinecek Kullanıcı Adı: & net user %sil% /delete & pause
if %secim%==0 goto menu
goto kullanici_yonetimi

:guvenlik
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                 GÜVENLİK VE GÜVENLİK DUVARI YÖNETİMİ                 ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Güvenlik Duvarını Kapat
echo [2] Güvenlik Duvarını Aç
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 netsh advfirewall set allprofiles state off & pause
if %secim%==2 netsh advfirewall set allprofiles state on & pause
if %secim%==0 goto menu
goto guvenlik

:performans
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                      PERFORMANS VE OPTİMİZASYON                      ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo ------------------------------
echo [1] Grup Politikalarını Güncelle
echo [2] Sistem Performansını İzle
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 gpupdate /force & pause
if %secim%==2 perfmon & pause
if %secim%==0 goto menu
goto performans

:yedekleme
cls
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║  Bu Projenin Geliştirilmesi ve Hataların Giderilebilmesi İçin Lütfen ║
echo ║        github.com/ibrahimunaLife Üzerinden İletişime Geçin           ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo.
echo ╔══════════════════════════════════════════════════════════════════════╗
echo ║                        YEDEKLEME VE KURTARMA                         ║
echo ╚══════════════════════════════════════════════════════════════════════╝
echo Yedekleme ve Kurtarma
echo ------------------------------
echo [1] Sistem Yedeği Al
echo [0] Ana Menüye Dön
set /p secim=Seciminizi girin:

if %secim%==1 sdclt.exe & pause
if %secim%==0 goto menu
goto yedekleme

:cikis
echo Teşekkür ederim - ibrahimunaLife
echo.
echo.
echo.
timeout /t 5 > nul
exit
