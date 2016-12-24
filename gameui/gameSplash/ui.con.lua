function runInit(nUiHandle)
	setHandle(nUiHandle)
end

function showText()
end

function runShow()
	mUiHandle:printText("header00")
	mUiHandle:printText("welcome0")
	mUiHandle:printText("command0")
	mUiHandle:printText("header00")
end

local mTick = 3
function runTick()
	if mTick >= 0 then
		mTick = mTick - 1
	end
end

function showTick()
	if mTick > 0 then
		mUiHandle:coutInt(mTick)
		mUiHandle:coutText(" ")
	elseif mTick == 0 then
		mUiHandle:coutInt(mTick)
		mUiHandle:coutText("\n")
	else
	end
end

function runClose()
end
