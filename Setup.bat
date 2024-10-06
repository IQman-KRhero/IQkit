@echo off
echo =========================================================================
echo                   DOWNLOADING ESSENTIALS...
echo                 after this finish open run.bat 
echo =========================================================================
echo ---- ip2geotools ---
pip install ip2geotools
echo ---- scapy ---
pip install scapy
echo ---- pyautogui ---
pip install pyautogui
echo ---- cryptography ---
pip install cryptography
echo ---- crypto ---
pip install crypto
echo ---- pygame ---
pip install pygame
echo ---- turtle ---
pip install turtle
echo ---- faker ---
pip install faker
echo ---- pyperclip ---
pip install pyperclip
echo ---- termcolor ---
pip install termcolor
echo ---- pystyle ---
pip install pystyle
echo ---- configparser ---
pip install configparser
echo ---- bs4 ---
pip install bs4
echo ---- counter ---
pip install counter
echo =========================================================================
echo                   DOWNLOADING ESSENTIALS... [60%]
echo =========================================================================
echo ---- django ---
pip install django
echo ---- google ---
pip install google
echo ---- wikipedia ---
pip install wikipedia
echo ---- speedtest ---
pip install speedtest
echo ---- imdbpy ---
pip install imdbpy
echo ---- psutil ---
pip install psutil
echo ---- ipaddress ---
pip install ipaddress
echo ---- pikepdf ---
pip install pikepdf
echo ---- phonenumbers ---
pip install phonenumbers
echo ---- opencage ---
pip install opencage
echo ---- folium ---
pip install folium
echo ---- argparse ---
pip install argparse
echo ---- importlib ---
pip install importlib
echo ---- shodan ---
pip install shodan
echo ---- image ---
pip install image
echo ---- numpy ---
pip install numpy
echo ---- translate ---
pip install translate
echo =========================================================================
echo                   DOWNLOADING ESSENTIALS... [90%]
echo =========================================================================
echo ---- distro ---
pip install distro>=1.7.0
echo ---- GitPython ---
pip install GitPython>=3.1.3
echo ---- requests ---
pip install requests>=2.32.0
echo ---- rich ---
pip install rich>=9.2.0
echo ---- urllib3 ---
pip install urllib3>=2.2.2 # not directly required, pinned by Snyk to avoid a vulnerability
echo =========================================================================
echo                   DOWNLOADING ESSENTIALS... [98%]
echo =========================================================================
echo ---- hashlib ---
pip install hashlib
echo ---- tkinter ---
pip install tkinter
echo =========================================================================
echo                         Finishing...
echo =========================================================================
echo =========================================================================
echo                      CHECKING ERRORS>!<
echo =========================================================================

if '%errorlevel%' == '0' (
goto success
) else (
goto fail
)
:success
echo.
echo    _____ _    _  _____ _____ ______  _____ _____  _ 
echo   / ____) !  ! !/  ___)  ___)  ____)/ ____) ____)! !
echo  ( (___ ! !  ! !  /  /  /   ! (__  ( (___( (___  ! !
echo   \___ \! !  ! ! (  (  (    !  __)  \___ \\___ \ ! !
echo   ____) ) !__! !  \__\  \___! (____ ____) )___) )!_!
echo  (_____/ \____/ \_____)_____)______)_____/_____/ (_)

:fail
echo.
echo  _____       _____ _      _ 
echo !  ___)/\   (_   _) !    ! !
echo ! (__ /  \    ! ! ! !    ! !
echo !  __) /\ \   ! ! ! !    ! !
echo ! ! / ____ \ _! !_! !___ !_!
echo !_!/_/    \_\_____)_____)(_)
echo.
echo check your internet connection and try again
echo.
echo =========================================================================
echo                       Opening ToolKit...
echo =========================================================================
open  run.bat


pause