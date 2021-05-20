#Install Notepad++
Invoke-WebRequest -Uri 'https://notepad-plus-plus.org/repository/7.x/7.7.1/npp.7.7.1.Installer.x64.exe' -OutFile 'c:\temp\notepadplusplus.exe'
Invoke-Expression -Command 'c:\temp\notepadplusplus.exe /S'

#Start sleep
Start-Sleep -Seconds 10

# Install FSLogix
Invoke-WebRequest -Uri 'https://aka.ms/fslogix_download' -OutFile 'c:\temp\fslogix.zip'
Start-Sleep -Seconds 10
Expand-Archive -Path 'C:\temp\fslogix.zip' -DestinationPath 'C:\temp\fslogix\'  -Force
Invoke-Expression -Command 'C:\temp\fslogix\x64\Release\FSLogixAppsSetup.exe /i
