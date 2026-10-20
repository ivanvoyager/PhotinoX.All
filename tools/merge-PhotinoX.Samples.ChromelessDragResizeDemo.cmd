@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX\Samples\ChromelessDragResizeDemo" --single
popd
pause