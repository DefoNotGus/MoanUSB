:: DefonotGus
:: 20/05/2024
@echo off
setlocal

:: Restore original sound settings
reg import "%userprofile%\backup_notification_default.reg"
reg import "%userprofile%\backup_deviceconnect_default.reg"

:: Notify user
echo Default sounds have been restored.
pause

endlocal
