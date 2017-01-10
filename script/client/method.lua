function runRoleReward(nValue, nRewardId)
	local roleEngine_ = cRoleEngine.instance()
	local role_ = roleEngine_:getRole()
	
	local rewardEngine_ = RewardEngine.instance()
	rewardEngine_:runReward(nRewardId, role_, nValue)
end

function quickRoleReward(nRewardId)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	
	runRoleReward(value_, nRewardId)
	
	valueMgr_:deleteValue(value_)
end

function runRoleIfSelect(nValue)
	local roleEngine_ = cRoleEngine.instance()
	local role_ = roleEngine_:getRole()
	
	local selectEngine_ = SelectEngine.instance()
	selectEngine_:runIfSelect(role_, nValue)
end

function quickRoleIfSelect(nSelectId)
	local valueMgr_ = ValueMgr.instance()
	local value_ = valueMgr_:createValue()
	local rawValue_ = valueMgr_:getValue(value_)
	
	rawValue_:pushInt32(nSelectId)
	runRoleIfSelect(value_)
	
	valueMgr_:deleteValue(value_)
end

function refreshUiScene()
	quickRoleReward(1)
end

function refreshGameScene()
	quickRoleReward(2)
end

function refreshExistScene()
	quickRoleReward(3)
end

