@echo off
chcp 65001
cls

:: Renk Ayarı: Yeşil
color 0A

:: Başlık
echo **********************************************************
echo    HIZLI YARDIM ARACI - İBRAHİM ÜNAL - ibrahimunaLife
echo **********************************************************

:MENU
echo 1. Bilgisayar Seri Numarasını, Adını, Marka ve Modelini Göster
echo 2. IP Adresini Görüntüle
echo 3. Windows Lisans Durumunu Göster
echo 4. Sistem Bilgilerini Görüntüle
echo 5. Windows Sürüm Bilgisi (winver)
echo 6. Son Format Tarihini Göster
echo 7. Disk Durumunu Kontrol Et
echo 8. Windows Güncelleme Durumunu Göster
echo 9. CPU Bilgilerini Göster
echo 10. Bellek (RAM) Kullanımını Göster
echo 11. Grup Politikalarını Güncelle (gpupdate /force)
echo 12. Kullanıcı Hesaplarını Listele
echo 13. Depolama Alanı Durumunu Göster
echo 14. Sabit Diski Tarama (chkdsk)
echo 15. Güvenlik Duvarını Kapat
echo 16. Güvenlik Duvarını Aç
echo 17. Windows Sistem Dosyalarını Onar
echo 18. Disk Temizliği Başlat (cleanmgr)
echo 19. Yüklü Programları Güncelle
echo 20. Windows Store Uygulamalarını Güncelle
echo 21. Ağ DNS Önbelleğini Temizle (flushdns)
echo 22. Gereksiz Dosyaları Temizle
echo 23. RAM Optimizasyonu Yap
echo 24. Ping Testi Yap
echo 25. Tracert (Yol İzleme) Yap
echo 26. Nslookup (DNS Sorgulaması) Yap
echo 27. Netstat (Bağlantı Durumu) Göster
echo 28. ARP (Adres Çözümleme Protokolü) Tablosunu Göster
echo 29. Route (Yönlendirme Tablosu) Göster
echo 30. Nbtstat (NetBIOS Durumu) Göster
echo 31. IP Yapılandırmasını Görüntüle (all)
echo 32. IP Yapılandırmasını Serbest Bırak (release)
echo 33. IP Yapılandırmasını Yenile (renew)
echo 34. Wi-Fi Şifresini Göster
echo 35. Sistem Yedeği Al
echo 36. Sistem Performansını İzle
echo 37. Kullanıcı Şifresini Değiştir
echo 38. Yeni Kullanıcı Ekle
echo 39. Kullanıcıları Listele
echo 40. Kullanıcı Hesabını Sil
echo 41. Çık

set /p choice=Bir seçenek girin (1-41): 

if "%choice%"=="1" goto COMPUTER_INFO
if "%choice%"=="2" goto IP
if "%choice%"=="3" goto LICENSE
if "%choice%"=="4" goto SYSINFO
if "%choice%"=="5" goto WINVER
if "%choice%"=="6" goto LAST_FORMAT_DATE
if "%choice%"=="7" goto DISK
if "%choice%"=="8" goto WINDOWSUPDATE
if "%choice%"=="9" goto CPUINFO
if "%choice%"=="10" goto MEMORY
if "%choice%"=="11" goto GPUPDATE
if "%choice%"=="12" goto USERS
if "%choice%"=="13" goto STORAGE
if "%choice%"=="14" goto CHKDSK
if "%choice%"=="15" goto DISABLE_FIREWALL
if "%choice%"=="16" goto ENABLE_FIREWALL
if "%choice%"=="17" goto SFC
if "%choice%"=="18" goto CLEANUP
if "%choice%"=="19" goto UPDATE_PROGRAMS
if "%choice%"=="20" goto UPDATE_STORE_APPS
if "%choice%"=="21" goto CLEAR_DNS
if "%choice%"=="22" goto CLEAN_TEMP_FILES
if "%choice%"=="23" goto OPTIMIZE_RAM
if "%choice%"=="24" goto PING_TEST
if "%choice%"=="25" goto TRACERT_TEST
if "%choice%"=="26" goto NSLOOKUP_TEST
if "%choice%"=="27" goto NETSTAT_TEST
if "%choice%"=="28" goto ARP_TEST
if "%choice%"=="29" goto ROUTE_TEST
if "%choice%"=="30" goto NBTSTAT_TEST
if "%choice%"=="31" goto IPCONFIG
if "%choice%"=="32" goto RELEASE_IP
if "%choice%"=="33" goto RENEW_IP
if "%choice%"=="34" goto WIFI_PASSWORD
if "%choice%"=="35" goto BACKUP
if "%choice%"=="36" goto PERFORMANCE
if "%choice%"=="37" goto CHANGE_PASSWORD
if "%choice%"=="38" goto ADD_USER
if "%choice%"=="39" goto LIST_USERS
if "%choice%"=="40" goto DELETE_USER
if "%choice%"=="41" exit
goto MENU

:: Bilgisayar Seri Numarası, Bilgisayar Adı, Marka ve Modelini Göster
:COMPUTER_INFO
cls
echo Bilgisayarın Seri Numarası:
wmic bios get serialnumber
echo.
echo Bilgisayar Adı:
hostname
echo.
echo Marka ve Model:
wmic computersystem get manufacturer, model
pause
goto MENU

:: IP Adresini Görüntüle
:IP
cls
echo Bilgisayarın IP Adresi:
ipconfig | findstr /i "IPv4"
pause
goto MENU

:: Windows Lisans Durumunu Göster
:LICENSE
cls
echo Windows Lisans Durumu:
slmgr /xpr
echo.
echo Windows Lisans Anahtarı:
wmic path softwarelicensingservice get OA3xOriginalProductKey
pause
goto MENU

:: Sistem Bilgilerini Görüntüle
:SYSINFO
cls
echo Sistem Bilgileri:
systeminfo
pause
goto MENU

:: Windows Sürüm Bilgisi Göster (winver)
:WINVER
cls
echo Windows Sürüm Bilgisi:
winver
pause
goto MENU

:: Son Format Tarihini Göster
:LAST_FORMAT_DATE
cls
echo Son Format Tarihi:
wmic os get installdate
pause
goto MENU

:: Disk Durumunu Kontrol Et
:DISK
cls
echo Disk Durumu:
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Windows Güncelleme Durumunu Göster
:WINDOWSUPDATE
cls
echo Windows Güncelleme Durumu:
wmic qfe list brief /format:table
pause
goto MENU

:: CPU Bilgilerini Göster
:CPUINFO
cls
echo CPU Bilgileri:
wmic cpu get caption, deviceid, name, numberofcores, maxclockspeed
pause
goto MENU

:: Bellek (RAM) Kullanımını Göster
:MEMORY
cls
echo Bellek (RAM) Kullanımı:
wmic memorychip get capacity, speed, manufacturer
pause
goto MENU

:: Grup Politikalarını Güncelle (gpupdate /force)
:GPUPDATE
cls
echo Grup Politikaları Güncelleniyor...
gpupdate /force
pause
goto MENU

:: Kullanıcı Hesaplarını Listele
:USERS
cls
echo Kullanıcı Hesapları:
net user
pause
goto MENU

:: Depolama Alanı Durumunu Göster
:STORAGE
cls
echo Depolama Alanı Durumu:
wmic logicaldisk get caption, description, freespace, size
pause
goto MENU

:: Sabit Diski Tarama (chkdsk)
:CHKDSK
cls
echo Sabit diski tarıyor...
chkdsk C: /f /r /x
pause
goto MENU

:: Güvenlik Duvarını Kapat
:DISABLE_FIREWALL
cls
echo Güvenlik Duvarı devre dışı bırakılıyor...
netsh advfirewall set allprofiles state off
pause
goto MENU

:: Güvenlik Duvarını Aç
:ENABLE_FIREWALL
cls
echo Güvenlik Duvarı açılıyor...
netsh advfirewall set allprofiles state on
pause
goto MENU

:: Windows Sistem Dosyalarını Onar
:SFC
cls
echo Sistem dosyaları taranıyor...
sfc /scannow
pause
goto MENU

:: Disk Temizliği Başlat
:CLEANUP
cls
echo Disk Temizliği başlatılıyor...
cleanmgr
pause
goto MENU

:: Yüklü Programları Güncelle (winget)
:UPDATE_PROGRAMS
cls
echo Yüklü programlar güncelleniyor...
winget upgrade --all
pause
goto MENU

:: Windows Store Uygulamalarını Güncelle
:UPDATE_STORE_APPS
cls
echo Windows Store uygulamaları güncelleniyor...
powershell -Command "Get-AppxPackage | Foreach {Add-AppxPackage -Path $_.InstallLocation} "
pause
goto MENU

:: Ağ DNS Önbelleğini Temizle
:CLEAR_DNS
cls
echo DNS Önbelleği temizleniyor...
ipconfig /flushdns
pause
goto MENU

:: Gereksiz Dosyaları Temizle
:CLEAN_TEMP_FILES
cls
echo Geçici dosyalar temizleniyor...

:: %TEMP% Klasörünü Temizle
del /q /f %TEMP%\*

pause
goto MENU

:: RAM Optimizasyonu Yap
:OPTIMIZE_RAM
cls
echo RAM Optimizasyonu yapılıyor...
taskkill /f /im explorer.exe
start explorer.exe
pause
goto MENU

:: Ping Testi Yap
:PING_TEST
cls
set /p ip=Ping atmak istediğiniz IP adresini girin: 
ping %ip%
pause
goto MENU

:: Tracert Testi Yap
:TRACERT_TEST
cls
set /p ip=Tracert yapmak istediğiniz IP adresini girin: 
tracert %ip%
pause
goto MENU

:: Nslookup Testi Yap
:NSLOOKUP_TEST
cls
set /p dns=Nslookup yapmak istediğiniz domaini girin: 
nslookup %dns%
pause
goto MENU

:: Netstat Testi Göster
:NETSTAT_TEST
cls
echo Bağlantı durumu...
netstat -an
pause
goto MENU

:: ARP Testi Göster
:ARP_TEST
cls
echo ARP Tablosu:
arp -a
pause
goto MENU

:: Route Tablosu Göster
:ROUTE_TEST
cls
echo Yönlendirme Tablosu:
route print
pause
goto MENU

:: NBTStat (NetBIOS Durumu) Göster
:NBTSTAT_TEST
cls
echo NetBIOS Durumu:
nbtstat -n
pause
goto MENU

:: IP Yapılandırmasını Görüntüle (all)
:IPCONFIG
cls
echo IP Yapılandırması:
ipconfig /all
pause
goto MENU

:: IP Yapılandırmasını Serbest Bırak
:RELEASE_IP
cls
echo IP Yapılandırması serbest bırakılıyor...
ipconfig /release
pause
goto MENU

:: IP Yapılandırmasını Yenile
:RENEW_IP
cls
echo IP Yapılandırması yenileniyor...
ipconfig /renew
pause
goto MENU

:: Wi-Fi Şifresini Göster
:WIFI_PASSWORD
cls
echo Wi-Fi şifresi:
netsh wlan show profiles
set /p profile="Wi-Fi profilini girin: "
netsh wlan show profile name="%profile%" key=clear
pause
goto MENU

:: Sistem Yedeği Al
:BACKUP
cls
echo Sistem yedeği alınıyor...
pause
goto MENU

:: Performans İzleme
:PERFORMANCE
cls
echo Performans izleniyor...
perfmon
pause
goto MENU

:: Kullanıcı Şifresini Değiştirme
:CHANGE_PASSWORD
cls
echo Bir kullanıcı adı girin:
set /p username=Kullanıcı Adı: 
echo Yeni şifreyi girin:
set /p password=Yeni Şifre: 
net user %username% %password%
echo.
echo Şifre başarıyla değiştirildi!
pause
goto MENU

:: Yeni Kullanıcı Ekleme
:ADD_USER
cls
echo Yeni bir kullanıcı adı girin:
set /p newuser=Yeni Kullanıcı Adı: 
echo Kullanıcı şifresi girin:
set /p password=Şifre: 
net user %newuser% %password% /add
echo.
echo Yeni kullanıcı başarıyla eklendi!
pause
goto MENU

:: Mevcut Kullanıcıları Listele
:LIST_USERS
cls
echo Mevcut kullanıcılar:
net user
pause
goto MENU

:: Kullanıcı Hesabını Silme
:DELETE_USER
cls
echo Silmek istediğiniz kullanıcı adını girin:
set /p deluser=Kullanıcı Adı: 
net user %deluser% /delete
echo.
echo Kullanıcı başarıyla silindi!
pause
goto MENU

