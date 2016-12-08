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
	
	runAccountReward(value_, 7)
	
	local strValue_ = rawValue_:getString(1)
	local cEnterValue = assert(load(strValue_))();
	mRoleId = cEnterValue.mRoleId
	mServerId = cEnterValue.mServerId
	mServerName = cEnterValue.mServerName
	mAccountName = cEnterValue.mAccountName
	
	valueMgr_:deleteValue(value_)
end

function runEnter()
end

function onCancel()
	runAccountReward(value_, 7)
	mUiHandle:pushClose()
end

function showCreateUi()
	quickAccountReward(value_, 8)
end
