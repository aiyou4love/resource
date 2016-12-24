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
	
	runAccountReward(value_, 13)
	
	mAccountName = rawValue_:getString(1)
	mRoleId = rawValue_:getInt32(2)
	mServerId = rawValue_:getInt32(3)
	mServerName = rawValue_:getString(4)
	
	valueMgr_:deleteValue(value_)
end

function runEnter()
end

function onCancel()
	quickAccountReward(11)
	
	mUiHandle:pushClose()
	
	mAccountName = ""
	mRoleId = 0
	mServerId = 0
	mServerName = ""
	
	quickAccountReward(3)
end

function showCreateUi()
	quickAccountReward(8)
end
