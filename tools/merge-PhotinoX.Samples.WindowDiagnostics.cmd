@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\WindowDiagnostics" "" --single
popd
pause