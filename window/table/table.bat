@echo off
:::::::::::::::::::::跳转到脚本目录:::::::::::::::::::::
%DRIVER%
cd %PROJPATH%
:::::::::::::::::::::跳转到项目目录:::::::::::::::::::::
cd ../..
::::::::::::::::::::::保存项目名称::::::::::::::::::::::
for %%a in ("%cd%") do set SLNAME=%%~nxa
:::::::::::::::::::::跳转到目标目录:::::::::::::::::::::
cd binary/windows/%PROJNAME%
::::::::::::::::::::::::创建目录::::::::::::::::::::::::
if not exist asset (
	mkdir asset
	cd asset
	mkdir table
	mkdir config
	mkdir plugin
	mkdir ui
	mkdir lua
	cd ..
)
if not exist storage (
	mkdir storage
)
if not exist download (
	mkdir download
)
if not exist update (
	mkdir update
)
if not exist plugin (
	mkdir plugin
)
if not exist log (
	mkdir log
)
::::::::::::::::::::::::生成表格::::::::::::::::::::::::
cd %SLN_ROOT%
resource\tools\command\consoleui.exe -t resource/gameTb/%PROJNAME%/setting %SLNAME%/binary/windows/%PROJNAME%/asset/config
resource\tools\command\consoleui.exe -t resource/gameTb/%PROJNAME%/table %SLNAME%/binary/windows/%PROJNAME%/asset/table
::::::::::::::::::::::::生成脚本::::::::::::::::::::::::
xcopy /R /Y resource\script\client\*.* %SLNAME%\binary\windows\%PROJNAME%\asset\lua\
::::::::::::::::::::::::生成完成::::::::::::::::::::::::
@echo on
