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

function onLogin()
	local errorCode_ = runLogin()
	if 1 == errorCode_ then
		showEnterUi()
	elseif 2 == errorCode_ then
		mUiHandle:printText("accountexist")
		mUiHandle:coutText("\n")
	else
		mUiHandle:printText("error")
		mUiHandle:coutText("\n")
	end
end

function onRegisterUi()
	quickRoleReward(10)
end
