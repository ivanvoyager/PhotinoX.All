@echo off
pushd "%~dp0"
dotnet nuext-merge "..\PhotinoX.Cpp" ".yml;.txt;.cmake;.json;.hpp;.cpp;.cmd;.ps1;.sh" --single
popd
pause