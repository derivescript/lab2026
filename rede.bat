@echo off

echo Resetando configuracoes de rede...

:: Substitua "Ethernet" pelo nome da sua interface se for diferente
set INTERFACE="Ethernet"

:: Ativar DHCP para IP
netsh interface ip set address name=%INTERFACE% source=dhcp

:: Ativar DNS automático
netsh interface ip set dns name=%INTERFACE% source=dhcp

:: Limpar DNS antigo
ipconfig /flushdns

:: Renovar IP
ipconfig /release
ipconfig /renew

echo Configuracao concluida!
pause