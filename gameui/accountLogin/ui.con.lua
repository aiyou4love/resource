function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	if "" ~= mAccountName then
		mUiHandle:printText("accountName")
		print(mAccountName)
	end
	if "" ~= mPassword then
		mUiHandle:printText("password")
		print(mPassword)
	end
end

function runTick()
end

function showTick()
end

function runClose()
end

function onLogin()
	local errorCode_ = runLogin()
	if 1 == errorCode_ then
		mUiHandle:pushClose()
		showEnterUi()
	end
end
