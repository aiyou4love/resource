-----------------------------------------------
--       ���ð�ť���������Ӧ�¼�            --
-----------------------------------------------

function onEnter()
	if mRoleId > 0 then
		showNetConnect()
	else
		showCreateUi()
	end
end

function onServerList()
	quickAccountReward(16)
end

function onCancel()
	quickAccountReward(15)
	
	mAccountName = ""
	mRoleId = 0
	mServerId = 0
	mServerName = ""
end

