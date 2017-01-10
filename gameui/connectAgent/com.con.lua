-----------------------------------------------
--               程序响应事件                --
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
--       放置按钮和输入框响应事件            --
-----------------------------------------------
function onReturnEnterUi()
	quickRoleReward(9)
end
