@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\CustomSchemes" --single
popd
pause