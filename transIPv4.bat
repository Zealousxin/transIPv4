@echo off
if exist C:\WINDOWS\system32\transToDHCP (

  netsh interface ip set address name="WLAN" source=static addr=192.168.31.254 mask=255.255.255.0 gateway=192.168.31.1
  netsh interface ip set dns "WLAN" static 192.168.31.1 

  echo "source=STATIC" > transToSTATIC
  echo IPv4 is transformed to STATIC mode!
  del C:\WINDOWS\system32\transToDHCP
  
) else (

  netsh interface ip set address name="WLAN" source=dhcp
  
  echo "source=DHCP" > transToDHCP
  echo IPv4 is transformed to DHCP mode!
  
  
)
pause>nul