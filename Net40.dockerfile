﻿


# https://mcr.microsoft.com/en-us/product/dotnet/framework/runtime/about
FROM mcr.microsoft.com/dotnet/framework/runtime:3.5-windowsservercore-ltsc2019



RUN dism /online /Disable-Feature /FeatureName:NetFx4 /NoRestart



# Install .NET Framework 4.0
ADD https://download.microsoft.com/download/9/5/A/95A9616B-7A37-4AF6-BC36-D6EA96C8DAAE/dotNetFx40_Full_x86_x64.exe /dotnet40.exe
RUN /dotnet40.exe /q /norestart


