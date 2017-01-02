-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mErrorCode = 0
function getIdleAgent()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runAccountReward(value_, 24)
	
	local errorCode_ = rawValue_:getInt8(2);
	valueMgr_:deleteValue(value_)
	
	if 1 == errorCode_ then
		connectAgent()
		mErrorCode = 1
	else
		mErrorCode = 2
	end
	--refreshUiScene()
end

function connectAgent()
	quickAccountReward(25)
end
