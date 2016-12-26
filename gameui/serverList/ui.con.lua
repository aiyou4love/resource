-----------------------------------------------
--            放置程序响应事件               --
-----------------------------------------------

--脚本初始化入口
function runInit(nUiHandle)
	setHandle(nUiHandle)
	requestRoleList()
	if 1 == mErrorCode then
		getServerList()
		getRoleList()
	end
end

--显示窗口标头 窗口是不是置顶都会显示
function showText()
	if 1 ~= mErrorCode then
		mUiHandle:printText("error")
		return
	end
	mUiHandle:printText("serverList")
	for i = 1,#mServerList do
		mUiHandle:coutInt(mServerList[i].mServerId)
		mUiHandle:printText("server")
		mUiHandle:coutText(mServerList[i].mServerName)
		mUiHandle:coutText("\n")
	end
	if 0 ~= mServerId then
		mUiHandle:printText("selectId")
		mUiHandle:coutInt(mServerId)
		mUiHandle:coutText("\n")
	end
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
