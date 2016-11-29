mUiHandle = nil

function setHandle(nUiHandle)
	mUiHandle = nUiHandle
end

mAgent = 0
mGame = 0

function onAgent(nIndexValue, nValue)
	local index_ = nIndexValue:getValue(1);
	
	local valueMgr_ = ValueMgr.instance()
	local rawValue_ = valueMgr_:getValue(nValue)
	mAgent = rawValue_:getInt8(index_)
end

function onGame(nIndexValue, nValue)
	local index_ = nIndexValue:getValue(1);
	
	local valueMgr_ = ValueMgr.instance()
	local rawValue_ = valueMgr_:getValue(nValue)
	mGame = rawValue_:getInt8(index_)
end
