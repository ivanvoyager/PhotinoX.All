@echo off
dotnet run merge.cs "..\PhotinoX.Cpp" ".yml;.txt;.cmake;.json;.hpp;.cpp;.cmd;.ps1;.sh" --single
pause