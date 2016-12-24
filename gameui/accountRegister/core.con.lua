mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mAccountName=""
mPassword=""

function setAccountName(nValue)
	mAccountName = nValue
	quickAccountReward(7)
end

function setPassword(nValue)
	mPassword = nValue
	quickAccountReward(7)
end

function runRegister()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushString(mAccountName)
	rawValue_:pushString(mPassword)
	runAccountReward(value_, 10)
	
	local errorCode_ = rawValue_:getInt8(3);
	valueMgr_:deleteValue(value_)
	return errorCode_
end

function closeUi()
	quickAccountReward(9)
end
