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
	url/curl/CurlValue.cpp
	url/curl/CurlFile.cpp
	url/curl/CurlString.cpp
	url/curl/BaseCurl.cpp
	url/curl/HttpCurl.cpp
	url/curl/CurlEngine.cpp
	url/curl/CurlContext.cpp
	url/curl/MultiCurl.cpp
	url/url/UrlInfo.cpp
	url/url/UrlParser.cpp
	url/url/UrlMgr.cpp
	upint/Upint.cpp
	upint/UpintEngine.cpp
	net/netIp/NetInfo.cpp
	net/netIp/NetNo.cpp
	net/netIp/NetIp.cpp
	net/netIp/NetIpMgr.cpp
	net/ioservice/IoService.cpp
	net/session/ISessionRemove.cpp
	net/session/Session.cpp
	net/send/ISend.cpp
	net/send/SelfSend.cpp
	net/send/ServerSend.cpp
	net/connect/ConnectInfo.cpp
	net/connect/Connector.cpp
	net/connect/ConnectorMgr.cpp
	net/connect/ConnectEngine.cpp
	net/connect/ConnectRemove.cpp
	net/accept/AcceptorMgr.cpp
	net/accept/AcceptEngine.cpp
	net/accept/SessionMgr.cpp
	net/accept/AcceptRemove.cpp)
	
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
	url/curl/CurlValue.hpp
	url/curl/CurlFile.hpp
	url/curl/CurlString.hpp
	url/curl/BaseCurl.hpp
	url/curl/HttpCurl.hpp
	url/curl/CurlEngine.hpp
	url/curl/CurlContext.hpp
	url/curl/MultiCurl.hpp
	url/curl/EcurlValue.hpp
	url/url/EurlType.hpp
	url/url/UrlInfo.hpp
	url/url/UrlParser.hpp
	url/url/UrlMgr.hpp
	upint/Upint.hpp
	upint/UpintEngine.hpp
	net/netIp/NetInfo.hpp
	net/netIp/NetNo.hpp
	net/netIp/NetIp.hpp
	net/netIp/NetIpMgr.hpp
	net/ioservice/IoService.hpp
	net/session/ISessionRemove.hpp
	net/session/Session.hpp
	net/send/ISend.hpp
	net/send/SelfSend.hpp
	net/send/ServerSend.hpp
	net/connect/ConnectInfo.hpp
	net/connect/Connector.hpp
	net/connect/ConnectorMgr.hpp
	net/connect/ConnectEngine.hpp
	net/connect/ConnectRemove.hpp
	net/accept/AcceptorMgr.hpp
	net/accept/AcceptEngine.hpp
	net/accept/SessionMgr.hpp
	net/accept/AcceptRemove.hpp)
	
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
