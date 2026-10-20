@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\NotificationDiagnostics" --single
popd
pause