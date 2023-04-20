:: This script will install paq and download any additional plugins

@echo off

set PAQ_DIRECTORY=%LOCALAPPDATA%\nvim-data\site\pack\paqs\start\

if not exist %PAQ_DIRECTORY% mkdir %PAQ_DIRECTORY%

if not exist "%PAQ_DIRECTORY%paq-nvim\" git clone https://github.com/savq/paq-nvim.git %PAQ_DIRECTORY%paq-nvim

nvim +PaqSync +q

