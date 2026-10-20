@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\RuntimeDiagnostics" --single
popd
pause