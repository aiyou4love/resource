-----------------------------------------------
--       放置按钮和输入框响应事件            --
-----------------------------------------------

function onRoleName(nValue)
	setRoleName(nValue)
	refreshUiScene()
end

function onRoleRace(nValue)
	setRoleRace(nValue)
	refreshUiScene()
end

function onRoleCreate()
	local errorCode_ = runRoleCreate()
	if 1 == errorCode_ then
		showNetConnect()
	end
end
