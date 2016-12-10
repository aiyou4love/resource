function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
	if 2 == mAgent then
		mUiHandle:printText("disagent")
	else 1 == mAgent then
		mUiHandle:printText("agent")
	elseif 2 == mGame then
		mUiHandle:printText("disgame")
	elseif 1 == mGame then
		mUiHandle:printText("game")
	end
end

function runShow()
end

function runClose()
end
