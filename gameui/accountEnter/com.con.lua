-----------------------------------------------
--       ���ð�ť���������Ӧ�¼�            --
-----------------------------------------------

function onEnter()
	if mRoleId > 0 then
		runEnter()
	else
		showCreateUi()
	end
end

function onServerList()
	quickAccountReward(17)
end

function onCancel()
	quickAccountReward(16)
	
	mAccountName = ""
	mRoleId = 0
	mServerId = 0
	mServerName = ""
end

