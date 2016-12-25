-----------------------------------------------
--            放置程序响应事件               --
-----------------------------------------------

--脚本初始化入口
function runInit(nUiHandle)
	setHandle(nUiHandle)
end

--显示窗口标头 窗口是不是置顶都会显示
function showText()
end

--显示窗口正文 只有置顶窗口才会显示
function runShow()
	mUiHandle:printText("header00")
	mUiHandle:printText("welcome0")
	mUiHandle:printText("command0")
	mUiHandle:printText("command1")
	mUiHandle:printText("header00")
end

--窗口定时1秒响应事件
local mTick = 3
function runTick()
	if mTick > 0 then
		mTick = mTick - 1
	end
end

--置顶窗口定时1秒显示事件
function showTick()
	if mTick > 1 then
		mUiHandle:coutInt(mTick)
		mUiHandle:coutText(" ")
	elseif mTick > 0 then
		mUiHandle:coutInt(mTick)
		mUiHandle:coutText("\n")
	else
		quickAccountIfSelect(3)
	end
end

--窗口关闭事件
function runClose()
end
