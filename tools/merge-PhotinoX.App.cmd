@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.App\src\PhotinoX.App" ".cs" --single
popd
pause