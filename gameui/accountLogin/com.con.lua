-----------------------------------------------
--       ���ð�ť���������Ӧ�¼�            --
-----------------------------------------------


function onLogin()
	local errorCode_ = runLogin()
	if 1 == errorCode_ then
		showEnterUi()
	end
end
