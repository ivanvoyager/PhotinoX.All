@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\NavigationPolicyDemo" --single
popd
pause