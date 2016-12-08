project(aspect)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Aspect.cpp
	plugin/Plugin.cpp
	lua/LuaCondition.cpp
	lua/LuaReward.cpp
	lua/LuaAspect.cpp
	ui/UiAspect.cpp
	ui/UiReward.cpp
	role/role/RoleAspect.cpp
	role/role/RoleCondition.cpp
	role/role/RoleReward.cpp
	role/client/cRoleAspect.cpp
	role/agent/cRoleAspect.cpp
	account/account/AccountAspect.cpp
	account/account/AccountCondition.cpp
	account/account/AccountReward.cpp
	account/client/cAccountAspect.cpp
	account/agent/cAccountAspect.cpp
	account/social/cAccountAspect.cpp)
	
SET( headers Aspect.hpp
	plugin/Plugin.hpp
	EaspectId.hpp
	lua/LuaCondition.hpp
	lua/LuaReward.hpp
	lua/LuaAspect.hpp
	ui/UiAspect.hpp
	ui/UiReward.hpp
	role/role/RoleAspect.hpp
	role/role/RoleCondition.hpp
	role/role/RoleReward.hpp
	role/client/cRoleAspect.hpp
	role/agent/cRoleAspect.hpp
	account/account/AccountAspect.hpp
	account/account/AccountCondition.hpp
	account/account/AccountReward.hpp
	account/client/cAccountAspect.hpp
	account/agent/cAccountAspect.hpp
	account/social/cAccountAspect.hpp)
	
foreach(src IN ITEMS ${sources})
	SET(SRCS ${SRCS} ${prefixs}/${src})
endforeach(src)

foreach(src IN ITEMS ${headers})
	SET(HDRS ${HDRS} ${prefixs}/${src})
endforeach(src)

add_library( ${PROJECT_NAME} SHARED ${SRCS} ${HDRS} )
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES}
	lua serialize engine system dispatch curl)

install (TARGETS ${PROJECT_NAME} DESTINATION aspect)

unset(headers)
unset(sources)
unset(prefixs)
