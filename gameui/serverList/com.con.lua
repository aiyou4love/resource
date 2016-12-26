-----------------------------------------------
--       放置按钮和输入框响应事件            --
-----------------------------------------------
function onInputServer(nServerId)
	setServerId(nServerId)
	refreshUiScene()
end

function onSelectServer()
	SelectServerId()
end

function onReturnEnterUi()
	quickAccountReward(22)
end
