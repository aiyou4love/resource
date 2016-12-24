function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	mUiHandle:printText("header00")
end

local mTick = 10
function runTick()
	if mTick >= 0 then
		mTick = mTick - 1
	end
end

function showTick()
	if mTick >= 0 then
		print(mTick)
	else
	end
end

function runClose()
end
