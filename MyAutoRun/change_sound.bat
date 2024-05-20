:: DefonotGus
:: 20/05/2024
@echo off
setlocal

:: Path to the new sound files on USB drive
set chargeSound=%~d0\MyAutoRun\charge.wav
set usbSound=%~d0\MyAutoRun\usb.wav

:: Backup current sound settings
reg export "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current" "%userprofile%\backup_notification_default.reg" /y
reg export "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" "%userprofile%\backup_deviceconnect_default.reg" /y

:: Set new sounds
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\Notification.Default\.Current" /ve /t REG_SZ /d "%chargeSound%" /f
reg add "HKEY_CURRENT_USER\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current" /ve /t REG_SZ /d "%usbSound%" /f

:: Notify user
echo Default sounds for charging and USB connection have been updated.
pause

endlocal
