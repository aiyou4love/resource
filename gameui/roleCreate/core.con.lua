-----------------------------------------------
--            放置界面核心逻辑               --
-----------------------------------------------
mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mRoleName=""
mRoleRace=0

function setRoleName(nValue)
	mRoleName = nValue
end

function setRoleRace(nValue)
	mRoleRace = tonumber(nValue)
end

function runRoleCreate()
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushString(mRoleName)
	rawValue_:pushInt16(mRoleRace)
	runAccountReward(value_, 22)
	
	local errorCode_ = rawValue_:getInt8(2)
	
	valueMgr_:deleteValue(value_)
	return errorCode_
end

function showNetConnect()
	quickAccountReward(23)
end
