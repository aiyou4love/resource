function runInit(nUiHandle)
	setHandle(nUiHandle)
	initValue()
end

function showText()
end

function runShow()
	if 0 ~= mServerId then
		print("\n")
		mUiHandle:printText("serverId")
		print(mServerId)
	end
	if "" ~= mServerName then
		mUiHandle:printText("serverName")
		print(mServerName)
	end
	if "" ~= mAccountName then
		mUiHandle:printText("accountName")
		print(mAccountName)
	end
end

function runClose()
end

function onEnter()
	if mRoleId > 0 then
		runEnter()
	else
		showCreateUi()
	end
end

function onServerList()
end

