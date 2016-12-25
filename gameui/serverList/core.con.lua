-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

local mServerId = 0
function inputServerId(nServerId)
	mServerId = tonumber(nServerId)
end

function setServerId()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt32(mServerId)
	runAccountReward(value_, 9)
	
	local errorCode_ = rawValue_:getInt8(2)
	
	valueMgr_:deleteValue(value_)
	return errorCode_
end

function onServerId()
	local errorCode_ = setServerId()
	if 1 == errorCode_ then
		mUiHandle:pushClose()
	endif
end

mRoleList = {}
function getRoleList(nPage)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt16(nPage)
	runAccountReward(value_, 9)
	
	local roleStr_ = rawValue_:getString(2)
	mRoleList = assert(load(roleStr_))
	
	valueMgr_:deleteValue(value_)
end

mServerList = {}
function getServerList(nPage)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt16(nPage)
	runAccountReward(value_, 9)
	
	local serverStr_ = rawValue_:getString(2)
	mServerList = assert(load(serverStr_))
	
	valueMgr_:deleteValue(value_)
end
