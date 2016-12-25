-----------------------------------------------
--            放置程序响应事件               --
-----------------------------------------------

--脚本初始化入口
function runInit(nUiHandle)
	setHandle(nUiHandle)
end

--显示窗口标头 窗口是不是置顶都会显示
function showText()
	mUiHandle:printText("header00")
	mUiHandle:printText("welcome0")
	mUiHandle:printText("command0")
	mUiHandle:printText("command1")
	mUiHandle:printText("command2")
	mUiHandle:printText("command3")
	mUiHandle:printText("command4")
	mUiHandle:printText("command5")
	mUiHandle:printText("header00")
end

--显示窗口正文 只有置顶窗口才会显示
function runShow()
end

--窗口定时1秒响应事件
function runTick()
end

--置顶窗口定时1秒显示事件
function showTick()
end

--窗口关闭事件
function runClose()
end
