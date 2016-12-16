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

function runClose()
end

function onRegister()
	local errorCode_ = runRegister()
	if 1 == errorCode_ then
		mUiHandle:pushClose()
	elseif 2 == errorCode_ then
		mUiHandle:printText("fail")
	else
		mUiHandle:printText("system")
	end
end
