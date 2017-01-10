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
	
	runRoleReward(value_, 24)
	
	local errorCode_ = rawValue_:getInt8(2);
	valueMgr_:deleteValue(value_)
	
	if 0 == errorCode_ then
		mErrorCode = 1
	elseif 1 == errorCode_ then
		connectAgent()
		mErrorCode = 2
	else
		mErrorCode = 3
	end
	refreshUiScene()
end

function connectAgent()
	quickRoleReward(25)
end
