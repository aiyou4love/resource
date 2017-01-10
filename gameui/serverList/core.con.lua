-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mServerId = 0
function setServerId(nServerId)
	mServerId = tonumber(nServerId)
end

function selectServerId()
	if 0 == mServerId then
		mUiHandle:printText("setServerId")
		return
	end
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt32(mServerId)
	runRoleReward(value_, 20)
	
	valueMgr_:deleteValue(value_)
end

mRoleList = {}
function getRoleList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runRoleReward(value_, 19)
	
	local roleStr_ = rawValue_:getString(1)
	mRoleList = assert(load(roleStr_))()
	
	valueMgr_:deleteValue(value_)
end

mServerList = {}
function getServerList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runRoleReward(value_, 18)
	
	local serverStr_ = rawValue_:getString(1)
	mServerList = assert(load(serverStr_))()
	valueMgr_:deleteValue(value_)
end

mErrorCode = 0
function requestRoleList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runRoleReward(value_, 17)
	
	mErrorCode = rawValue_:getInt8(2)
	
	valueMgr_:deleteValue(value_)
end
