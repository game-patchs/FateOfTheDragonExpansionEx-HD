@echo off

DISM /online /enable-feature /featurename:DirectPlay /all

start /wait "" RegSetup.exe

start /wait "" dplay-setup.exe

exit
