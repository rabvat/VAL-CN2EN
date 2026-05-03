@echo off
title VAL CN2EN
chcp 65001>nul
:admincheck
net session >nul 2>&1
if %errorlevel% neq 0 (
    PowerShell -Command "Start-Process '%~dpnx0' -Verb RunAs"
    exit /b
)
set /p path=<"%TEMP%\VAL_PATH.txt"
cls
echo.
echo 免责声明:
echo 本脚本仅用于学习与交流用途,由本脚本造成的任何后果(不仅限于账号封禁),作者概不负责！
echo.
if not exist "%temp%\VAL_PATH.txt" goto askpath
:load
echo [+]无畏契约安装路径:%path%
echo [+]加载成功,正在寻找无畏契约进程...
echo.
:findprocess
tasklist|find "VALORANT-Win64-Shipping" >nul&&goto fail||goto next
:next
tasklist|find "AclosGameProxy.exe" >nul&&goto delete||goto next
:delete
echo [+]已找到无畏契约进程,正在删除中文语言包...
echo.
del /f /s /q %path%\live\ShooterGame\Content\Paks\zh_CN_Text-WindowsClient.pak
del /f /s /q %path%\live\ShooterGame\Content\Paks\zh_CN_Text-WindowsClient.sig
del /f /s /q %path%\live\ShooterGame\Content\Paks\zh_CN_Text-WindowsClient.ucas
del /f /s /q %path%\live\ShooterGame\Content\Paks\zh_CN_Text-WindowsClient.utoc
echo.
:done
echo [+]删除完毕,程序将在10秒内自动退出...(按任意键也可以退出)
timeout 10>nul
exit
:fail
echo [+]删除失败,请在游戏启动之前使用本脚本！
echo [+]程序将在10秒内自动退出...(按任意键也可以退出)
timeout 10>nul
exit

:askpath
del /f /s /q "%temp%\VAL_PATH.txt"
%systemdrive%\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('请输入您的无畏契约安装路径,这在VAL CN2EN的首次启动是必要的。', 'VAL CN2EN')}" > "%TEMP%\VAL_PATH.txt"
set /p path=<"%TEMP%\VAL_PATH.txt"
if not exist %path%\live\VALORANT.exe goto pathfailed
echo [+]已保存路径,下一次启动将不会再次询问无畏契约路径。
echo.
goto load
:pathfailed
%systemdrive%\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('无法找到无畏契约执行文件,请定位至名为“无畏契约(2001715)”的文件夹！', '安装路径错误！');}"
goto askpath