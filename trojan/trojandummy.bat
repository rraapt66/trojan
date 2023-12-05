@echo off
color f0
echo 1 create trojan
echo 2 delete trojan
SET /p choix=" PRESS NUMBER USE  >  "
if %choix%== 1 Goto :c
if %choix%== 2 Goto :delete
:c
WEBHOOK = 
setlocal
mkdir trojan
cd trojan
echo "none" > "trojan.exe"
cls
echo set setting in webhook
set /p WEBHOOK1=WEBHOOK : 
:a
curl -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST %WEBHOOK1% --data "{\"content\": \"trojanset Successful\"}" discord-webhook-link
goto b
:delete
del trojan
exit