
# Install Chocolatey
Write-Output Installing Chocolatey ...
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Install chocolatey package TOR
Write-Output Installing Tor Browser ...
choco install tor-browser -y

# Run TOR Browser
Write-Output Launch Tor Browser ...
Start-Process -FilePath "C:\ProgramData\chocolatey\lib\tor-browser\tools\tor-browser\Browser\firefox.exe" -ArgumentList "-url about:preferences#privacy" -Wait -WindowStyle Maximized


Write-Output All done ...
exit
