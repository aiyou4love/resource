-----------------------------------------------
--               ������Ӧ�¼�                --
-----------------------------------------------
function inConnectAgentError(nValue, nIndex)
	mUiHandle:printText("connectError")
end

function inConnectAgentSucess(nValue, nIndex)
	mUiHandle:printText("connectSucess")
end

function inConnectAgentTimeout(nValue, nIndex)
	mUiHandle:printText("connectTimeout")
end
-----------------------------------------------
--       ���ð�ť���������Ӧ�¼�            --
-----------------------------------------------
function onReturnEnterUi()
	quickRoleReward(9)
end
