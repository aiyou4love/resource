project(autoup)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Main.cpp
	zip/miniz.c
	zip/zip_file.cpp
	directory/AutoupDirectory.cpp
	log/LogEx.cpp
	curl/AutoupCurl.cpp
	serialize/AutocReader.cpp
	serialize/AutojReader.cpp
	serialize/AutojWriter.cpp
	startup/Startup.cpp
	autoup/AutoupItem.cpp
	autoup/AutoupSave.cpp
	autoup/AutoupEngine.cpp)
	
SET( headers AutoupInc.hpp
	zip/miniz.h
	zip/zip_file.hpp
	directory/AutoupDirectory.hpp
	log/LogEx.hpp
	curl/AutoupCurl.hpp
	serialize/AutocReader.hpp
	serialize/AutojReader.hpp
	serialize/AutojWriter.hpp
	startup/IPlugin.hpp
	startup/Startup.hpp
	autoup/AutoupItem.hpp
	autoup/AutoupSave.hpp
	autoup/AutoupEngine.hpp)

foreach(src IN ITEMS ${sources})
	SET(SRCS ${SRCS} ${prefixs}/${src})
endforeach(src)

foreach(src IN ITEMS ${headers})
	SET(HDRS ${HDRS} ${prefixs}/${src})
endforeach(src)

add_executable( ${PROJECT_NAME} ${SRCS} ${HDRS} )
target_link_libraries(${PROJECT_NAME} ${Boost_LIBRARIES} curl)

install(TARGETS ${PROJECT_NAME} DESTINATION .)

unset(headers)
unset(sources)
unset(prefixs)
