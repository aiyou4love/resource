-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

function refreshUi()
	quickAccountReward(7)
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

function showRegisterUi()
	quickAccountReward(8)
end

function showEnterUi()
	quickAccountReward(11)
end

function runLogin()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushString(mAccountName)
	rawValue_:pushString(mPassword)
	rawValue_:pushInt16(1)
	runAccountReward(value_, 12)
	
	local errorCode_ = rawValue_:getInt8(4)
	valueMgr_:deleteValue(value_)
	return errorCode_
end
