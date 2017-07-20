wget https://tonytrytouse.blob.core.windows.net/images/map-7.50-setup.exe -outfile C:\map-7.50-setup.exe
Start-Process -FilePath "C:\map-7.50-setup.exe" -ArgumentList "/S"
[System.Environment]::SetEnvironmentVariable("PATH", $Env:Path + ";C:\Program Files (x86)\Nmap", "Machine")