-----------------------------------------------
--       ���ð�ť���������Ӧ�¼�            --
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
	end
end

function onRegisterUi()
	quickAccountReward(10)
end
