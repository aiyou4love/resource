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

function SelectServerId()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt32(mServerId)
	runAccountReward(value_, 21)
	
	valueMgr_:deleteValue(value_)
end

mRoleList = {}
function getRoleList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runAccountReward(value_, 20)
	
	local roleStr_ = rawValue_:getString(1)
	mRoleList = assert(load(roleStr_))()
	
	valueMgr_:deleteValue(value_)
end

mServerList = {}
function getServerList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runAccountReward(value_, 19)
	
	local serverStr_ = rawValue_:getString(1)
	mServerList = assert(load(serverStr_))()
	valueMgr_:deleteValue(value_)
end

mErrorCode = 0
function requestRoleList()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runAccountReward(value_, 18)
	
	mErrorCode = rawValue_:getInt8(2)
	
	valueMgr_:deleteValue(value_)
end
