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
	mkdir aspect
	mkdir ui
	mkdir lua
	cd lua
	mkdir platform
	mkdir common
	cd ..\..
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
if not exist aspect (
	mkdir aspect
)
if not exist log (
	mkdir log
)
::::::::::::::::::::::::生成表格::::::::::::::::::::::::
cd %SLN_ROOT%
resource\tools\command\consoleui.exe -t resource/gameTb/%PROJNAME%/setting %SLNAME%/binary/windows/%PROJNAME%/asset/config
resource\tools\command\consoleui.exe -t resource/gameTb/%PROJNAME%/table %SLNAME%/binary/windows/%PROJNAME%/asset/table
::::::::::::::::::::::::生成脚本::::::::::::::::::::::::
xcopy /R /Y resource\script\%PROJNAME%\*.* %SLNAME%\binary\windows\%PROJNAME%\asset\lua\platform\
xcopy /R /Y /S resource\script\common\*.* %SLNAME%\binary\windows\%PROJNAME%\asset\lua\common\
echo %PROJNAME%
if %PROJNAME% == client (
	echo "hello world"
	xcopy /R /Y /S resource\gameui\* %SLNAME%\binary\windows\%PROJNAME%\asset\ui\
)
::::::::::::::::::::::::生成完成::::::::::::::::::::::::
@echo on
