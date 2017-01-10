-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------

mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mAccountName=""
mPassword=""

function setAccountName(nValue)
	mAccountName = nValue
end

function setPassword(nValue)
	mPassword = nValue
end

function runRegister()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushString(mAccountName)
	rawValue_:pushString(mPassword)
	runRoleReward(value_, 12)
	
	local errorCode_ = rawValue_:getInt8(3);
	valueMgr_:deleteValue(value_)
	return errorCode_
end
