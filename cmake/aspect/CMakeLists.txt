project(aspect)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Aspect.cpp
	plugin/Plugin.cpp
	lua/LuaCondition.cpp
	lua/LuaReward.cpp
	lua/LuaAspect.cpp)
	
SET( headers Aspect.hpp
	plugin/Plugin.hpp
	EaspectId.hpp
	lua/LuaCondition.hpp
	lua/LuaReward.hpp
	lua/LuaAspect.hpp)
	
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
