@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.Native\Photino.Native"
popd
pause