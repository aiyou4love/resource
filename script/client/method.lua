function runAccountReward(nValue, nRewardId)
	local accountEngine_ = cAccountEngine.instance()
	local account_ = accountEngine_:getAccount()
	
	local rewardEngine_ = RewardEngine.instance()
	rewardEngine_:runReward(nRewardId, account_, nValue)
end

function quickAccountReward(nRewardId)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	
	runAccountReward(value_, nRewardId)
	
	valueMgr_:deleteValue(value_)
end

function runAccountIfSelect(nValue)
	local accountEngine_ = cAccountEngine.instance()
	local account_ = accountEngine_:getAccount()
	
	local selectEngine_ = SelectEngine.instance()
	selectEngine_:runIfSelect(account_, nValue)
end

function quickAccountIfSelect(nSelectId)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt32(nSelectId)
	runAccountIfSelect(value_)
	
	valueMgr_:deleteValue(value_)
end
