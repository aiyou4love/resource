function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	print("")
	if "" ~= mAccountName then
		mUiHandle:printText("accountName")
		print(mAccountName)
	end
	if "" ~= mPassword then
		mUiHandle:printText("password")
		print(mPassword)
	end
	print("")
end

function runClose()
end

function onRegister()
	local errorCode_ = runRegister()
	if 1 == errorCode_ then
		mUiHandle:pushClose()
	elseif 2 == errorCode_ then
		print("\n")
		mUiHandle:printText("fail")
		print("\n")
	else
		print("\n")
		mUiHandle:printText("system")
		print("\n")
	end
end
