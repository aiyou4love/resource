project(normal)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources
	normal/CommonMethod.cpp
	class/ClassMethod.cpp
	convert/ConvertValue.cpp
	string/StringMethod.cpp
	string/StringTable.cpp)
	
SET( headers
	normal/CommonMethod.hpp
	normal/Instance.hpp
	normal/DefaultValue.hpp
	class/ClassMethod.hpp
	convert/ConvertValue.hpp
	string/StringMethod.hpp 
	string/StringTable.hpp)
	
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
