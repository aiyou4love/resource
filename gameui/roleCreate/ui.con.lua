function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	if "" ~= mRoleName then
		mUiHandle:printText("roleName")
		print(mRoleName)
	end
	if "1" == mRoleRace then
		mUiHandle:printText("select1")
	elseif "2" == mRoleRace then
		mUiHandle:printText("select2")
	end
end

function runClose()
end

function onRoleCreate()
	local errorCode_ = runRoleCreate()
	if 1 == errorCode_ then
		mUiHandle:pushClose()
	end
end
