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

add_library( ${PROJECT_NAME} STATIC ${SRCS} ${HDRS} )

unset(headers)
unset(sources)
unset(prefixs)
