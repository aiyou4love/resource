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
	quickRoleReward(16)
end

function onCancel()
	quickRoleReward(15)
	
	mAccountName = ""
	mRoleId = 0
	mServerId = 0
	mServerName = ""
end

