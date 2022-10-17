cd Desktop
mkdir A
cd A
netsh wlan export profile key=clear 
cd ..
Powershell.exe -executionpolicy remotesigned -File  C:\Users\tomwa\Downloads\Test.ps1
del A.zip
pause