@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\TransparencyDemo" "" --single
popd
pause