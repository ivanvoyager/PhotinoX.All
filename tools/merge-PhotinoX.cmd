@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Photino.NET"
popd
pause