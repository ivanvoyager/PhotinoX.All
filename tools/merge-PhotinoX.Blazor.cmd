@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.Blazor\Photino.Blazor" ".cs" --single
popd
pause