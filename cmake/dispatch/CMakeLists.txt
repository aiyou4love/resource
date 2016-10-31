project(dispatch)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Dispatch.cpp
	application/Application.cpp
	application/ApplicationUpdate.cpp
	application/ApplicationUpdateClone.cpp
	application/ApplicationEngine.cpp)
	
SET( headers Dispatch.hpp EdispatchId.hpp
	application/Application.hpp
	application/ApplicationUpdate.hpp
	application/ApplicationUpdateClone.hpp
	application/ApplicationEngine.hpp)
	
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
