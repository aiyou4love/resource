project(engine)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Engine.cpp
	aspect/value/Buffer.cpp
	aspect/value/Value.cpp
	aspect/value/IndexValue.cpp
	aspect/value/PacketMgr.cpp
	aspect/value/ValueMgr.cpp
	aspect/condition/Condition.cpp
	aspect/condition/ConditionEngine.cpp
	aspect/dispatch/DispatchEngine.cpp 
	aspect/doing/Doing.cpp
	aspect/entity/Property.cpp
	aspect/entity/Entity.cpp
	aspect/reward/Reward.cpp
	aspect/reward/RewardEngine.cpp
	aspect/select/IfSelect.cpp
	aspect/select/SelectEngine.cpp
	aspect/select/Selector.cpp
	aspect/aspect/AspectEngine.cpp
	aspect/aspect/IAspect.cpp
	aspect/trigger/Trigger.cpp
	handle/Context.cpp
	handle/IContextClone.cpp
	handle/Handle.cpp
	handle/HandleConfig.cpp
	handle/HandleCount.cpp
	handle/HandleEngine.cpp
	curl/CurlValue.cpp
	curl/CurlFile.cpp
	curl/CurlString.cpp
	curl/BaseCurl.cpp
	curl/HttpCurl.cpp
	curl/CurlEngine.cpp
	curl/CurlContext.cpp
	curl/MultiCurl.cpp)
	
SET( headers Engine.hpp
	aspect/value/Buffer.hpp
	aspect/value/Value.hpp
	aspect/value/IndexValue.hpp
	aspect/value/PacketMgr.hpp
	aspect/value/ValueMgr.hpp
	aspect/condition/Condition.hpp
	aspect/condition/ConditionEngine.hpp
	aspect/dispatch/DispatchEngine.hpp
	aspect/dispatch/IDispatch.hpp
	aspect/doing/Doing.hpp
	aspect/entity/Property.hpp
	aspect/entity/Entity.hpp
	aspect/reward/Reward.hpp
	aspect/reward/RewardEngine.hpp
	aspect/select/IfSelect.hpp
	aspect/select/SelectEngine.hpp
	aspect/select/Selector.hpp
	aspect/aspect/AspectEngine.hpp
	aspect/aspect/IAspect.hpp
	aspect/trigger/Trigger.hpp
	aspect/doing/EdoingType.hpp
	aspect/trigger/EtriggerType.hpp
	handle/Context.hpp
	handle/IContextClone.hpp
	handle/Handle.hpp
	handle/HandleConfig.hpp
	handle/HandleCount.hpp
	handle/HandleEngine.hpp
	curl/CurlValue.hpp
	curl/CurlFile.hpp
	curl/CurlString.hpp
	curl/BaseCurl.hpp
	curl/HttpCurl.hpp
	curl/CurlEngine.hpp
	curl/CurlContext.hpp
	curl/MultiCurl.hpp 
	curl/EcurlValue.hpp)
	
foreach(src IN ITEMS ${sources})
	SET(SRCS ${SRCS} ${prefixs}/${src})
endforeach(src)

foreach(src IN ITEMS ${headers})
	SET(HDRS ${HDRS} ${prefixs}/${src})
endforeach(src)

add_library( ${PROJECT_NAME} STATIC ${SRCS} ${HDRS} )

unset(headers)
unset(sources)
unset(prefixs)
