@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\SplashScreen" --single
popd
pause