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
