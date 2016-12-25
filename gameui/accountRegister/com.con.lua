-----------------------------------------------
--       放置按钮和输入框响应事件            --
-----------------------------------------------

function onAccountName(nValue)
	setAccountName(nValue)
	refreshUiScene()
end

function onPassword(nValue)
	setPassword(nValue)
	refreshUiScene()
end

function onRegister()
	local errorCode_ = runRegister()
	if 1 == errorCode_ then
		onCloseUi()
	elseif 2 == errorCode_ then
		mUiHandle:printText("fail")
	else
		mUiHandle:printText("system")
	end
end

function onCloseUi()
	quickAccountReward(11)
end
