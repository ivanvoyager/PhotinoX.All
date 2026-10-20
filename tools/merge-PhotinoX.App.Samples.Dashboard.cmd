@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.App\Samples\PhotinoX.App.Dashboard" "" --single
popd
