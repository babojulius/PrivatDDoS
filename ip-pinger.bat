@echo off
color b  
set /p IP=Type in IP: 
:top
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=0b & echo Target down, L BOZO.) 
set /a rand1=%random% %% 16
set /a rand2=%random% %% 16
set HEX=0123456789ABCDEF
call set hexcolors=%%HEX:~%rand1%,1%%

color %hexcolors%
ping -t 2 0 10 127.0.0.1 >nul
title Velociraptor - Attacking %IP%
GoTo top 