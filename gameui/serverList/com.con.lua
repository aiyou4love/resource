-----------------------------------------------
--       放置按钮和输入框响应事件            --
-----------------------------------------------
function onInputServer(nServerId)
	setServerId(nServerId)
	refreshUiScene()
end

function onSelectServer()
	selectServerId()
end

function onReturnEnterUi()
	quickRoleReward(9)
end
