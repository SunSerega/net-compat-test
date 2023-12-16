


FROM mcr.microsoft.com/windows/nanoserver:1809



# Install .NET Framework 4.0
RUN powershell -Command \
	$ErrorActionPreference = 'Stop'; \
	Invoke-WebRequest -uri 'https://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe' -OutFile 'dotNetFx40_Full_x86_x64.exe'; \
	Start-Process -FilePath .\dotNetFx40_Full_x86_x64.exe -ArgumentList '/q /norestart' -NoNewWindow -Wait; \
	Remove-Item -Force .\dotNetFx40_Full_x86_x64.exe


