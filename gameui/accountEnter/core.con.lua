-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mAccountName = ""
mRoleId = 0
mServerId = 0
mServerName = ""

function initValue()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	runAccountReward(value_, 15)
	
	mAccountName = rawValue_:getString(1)
	mRoleId = rawValue_:getInt32(2)
	mServerId = rawValue_:getInt32(3)
	mServerName = rawValue_:getString(4)
	
	valueMgr_:deleteValue(value_)
end

function runEnter()
end

function showCreateUi()
	quickAccountReward(8)
end
