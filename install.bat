
SET username=XXX
SET password=XXXXXXXXXXXX
SET apkname=Cerberus_disguised.apk

ECHO OFF
CLS

:MENU
CLS
ECHO.
ECHO ======== [ Cerberus QuickInstall v0.1 ] ========
ECHO.
ECHO Cerberus username: %username%
ECHO Cerberus APK name: %apkname%
ECHO.
ECHO 1 - Install Cerberus for Lollipop (5.x.x)
ECHO 2 - Install Cerberus for Marshmallow (6.x.x)
ECHO 3 - Remove Cerberus
ECHO.
SET /P M="Cerb> "
IF %M%==1 GOTO INSTALL_V5
IF %M%==2 GOTO INSTALL_V6
IF %M%==3 GOTO UNINSTALL

:INSTALL_V5
CLS
ECHO.
ECHO ======== [ Cerberus QuickInstall v0.1 ] ========
ECHO                  = Lollipop =
ECHO.
ECHO Make Make sure the phone is plugged in and ADB is enabled.
ECHO Press any key to begin.
pause >nul
ECHO.
ECHO Prompting for ADB verification...
adb shell exit
ECHO.
ECHO Press ENTER to Install Cerberus.
ECHO.
pause >nul
ECHO Installing Cerberus...
adb install %apkname%
ECHO.
ECHO Installed.
ECHO.
ECHO Opening cerberus...
adb shell am start -n com.lsdroid.cerberuss/com.lsdroid.cerberus.StartActivity
ECHO Press enter when the login screen is open
pause >nul
ECHO Logging in...
adb shell input text %username%
adb shell input keyevent 61
adb shell input text %password%
adb shell input keyevent 61
adb shell input keyevent 66
ECHO Enabling Device admin and hiding from app drawer...
timeout 2 >nul
adb shell input keyevent 4
adb shell input keyevent 4
adb shell input keyevent 19
adb shell input keyevent 19
adb shell input keyevent 19
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 66
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 66
adb shell input keyevent 61
adb shell input keyevent 22
adb shell input keyevent 66
adb shell input keyevent 20
adb shell input keyevent 66
ECHO Exiting...
adb shell input keyevent 3
GOTO MENU

:INSTALL_V6
CLS
ECHO.
ECHO ======== [ Cerberus QuickInstall v0.1 ] ========
ECHO                  = Marshmallow =
ECHO.
ECHO Make Make sure the phone is plugged in and ADB is enabled.
ECHO Press any key to begin.
pause >nul
ECHO.
ECHO Prompting for ADB verification...
adb shell exit
ECHO.
ECHO Press ENTER to Install Cerberus.
ECHO.
pause >nul
ECHO Installing Cerberus...
adb install %apkname%
ECHO.
ECHO Installed.
ECHO.
ECHO Opening cerberus...
adb shell am start -n com.lsdroid.cerberuss/com.lsdroid.cerberus.StartActivity
ECHO Enabling permissions...
adb shell input keyevent 20
adb shell input keyevent 66
adb shell input keyevent 22
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 66
adb shell input keyevent 4
adb shell input keyevent 66
ECHO Press enter when the login screen is open
pause >nul
ECHO Logging in...
adb shell input text %username%
adb shell input keyevent 61
adb shell input text %password%
adb shell input keyevent 61
adb shell input keyevent 66
ECHO Enabling Device admin and hiding from app drawer...
timeout 2 >nul
adb shell input keyevent 4
adb shell input keyevent 4
adb shell input keyevent 19
adb shell input keyevent 19
adb shell input keyevent 19
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 66
adb shell input keyevent 20
adb shell input keyevent 20
adb shell input keyevent 66
adb shell input keyevent 61
adb shell input keyevent 22
adb shell input keyevent 66
adb shell input keyevent 20
adb shell input keyevent 66
ECHO Exiting...
adb shell input keyevent 3
GOTO MENU

:UNINSTALL
ECHO Opening settings...
adb shell am start -n com.android.settings/.SecuritySettings
ECHO Remove Cerberus as an administrator and press enter
pause >nul
adb uninstall com.lsdroid.cerberuss
adb shell input keyevent 4
adb shell input keyevent 4
adb shell input keyevent 4
GOTO MENU