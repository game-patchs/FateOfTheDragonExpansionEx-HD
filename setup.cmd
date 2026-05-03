@echo off

DISM /online /enable-feature /featurename:DirectPlay /all

start /wait "" RegSetup.exe


exit
