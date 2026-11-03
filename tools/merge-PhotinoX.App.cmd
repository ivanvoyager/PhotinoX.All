@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.App\src\PhotinoX.App" --single
popd
pause