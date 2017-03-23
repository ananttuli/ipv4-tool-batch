@ echo off
ipconfig
echo SETTING ALTERNATE IP ADDRESS . . .
:choice_n
set /P alt_ip=Enter last octet of IPv4 address:


netsh interface ipv4 set address name="Wi-Fi" source=static address=10.122.2.%alt_ip% mask=255.255.248.0 gateway=10.122.0.1



netsh interface ipv4 set dns name="Wi-Fi" source=static address=8.8.8.8


netsh interface ipv4 add dnsservers "Wi-Fi" 8.8.4.4 index=2

set /P ex_check=Satisfied? (y/n)

goto :choice_%ex_check%
:choice_y

echo Thank You. Scripted by AT.
pause

