function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	if "" ~= mAccountName then
		print("\n")
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

function onLogin()
	local errorCode_ = runLogin()
	if 1 == errorCode_ then
		mUiHandle:insertClose()
	end
end
