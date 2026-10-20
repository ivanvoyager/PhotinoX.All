@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\DialogsDemo" --single
popd
pause