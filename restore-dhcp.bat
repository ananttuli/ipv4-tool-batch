@ echo off

echo Restoring IP address to DHCP . . .

netsh interface ipv4 set address name=4 source=dhcp

pause

echo -complete-