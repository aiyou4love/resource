@echo off
:::::::::::::::::::::初始化编译环境:::::::::::::::::::::
C:
cd "C:\Program Files (x86)\Microsoft Visual C++ Build Tools"
call vcbuildtools.bat amd64
:::::::::::::::::::::跳转到脚本目录:::::::::::::::::::::
%DRIVER%
cd %PROJPATH%
:::::::::::::::::::::跳转到项目目录:::::::::::::::::::::
cd ../..
::::::::::::::::::::::保存项目名称::::::::::::::::::::::
for %%a in ("%cd%") do set SLNAME=%%~nxa
:::::::::::::::::::跳转到编译中间目录:::::::::::::::::::
cd develop
:::::::::::::::::::跳转到编译项目目录:::::::::::::::::::
if not exist %PROJNAME% (
	mkdir %PROJNAME%
)
cd %PROJNAME%
::::::::::::::::::::::::执行编译::::::::::::::::::::::::
cmake %SLN_ROOT%/resource/cmake -G"Visual Studio 15 Win64" -D__SLNAME__=%SLNAME% -D__PROJNAME__=%PROJNAME%
msbuild %PROJNAME%.sln /maxcpucount:8
msbuild INSTALL.vcxproj
::::::::::::::::::::::::编译完成::::::::::::::::::::::::
@echo on
