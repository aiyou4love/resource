-----------------------------------------------
--       放置按钮和输入框响应事件            --
-----------------------------------------------


function onLogin()
	local errorCode_ = runLogin()
	if 1 == errorCode_ then
		showEnterUi()
	end
end
