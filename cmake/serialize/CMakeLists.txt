project(serialize)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Serialize.cpp
	normal/normal/CommonMethod.cpp
	normal/class/ClassMethod.cpp
	normal/convert/ConvertValue.cpp
	normal/string/StringMethod.cpp
	normal/string/StringTable.cpp
	normal/count/BitCount.cpp
	normal/count/Int32Count.cpp
	normal/count/IntCount.cpp
	workDirectory/WorkDirectory.cpp
	log/LogEngine.cpp
	lifecycle/LifeCycle.cpp
	serialize/config/ConfigEngine.cpp
	serialize/table/TableEngine.cpp
	serialize/userDefault/UserDefault.cpp
	serialize/serialize/BinReader.cpp
	serialize/serialize/BinWriter.cpp
	serialize/serialize/BufReader.cpp
	serialize/serialize/BufWriter.cpp
	serialize/serialize/JsonReader.cpp
	serialize/serialize/JsonWriter.cpp
	serialize/serialize/TableReader.cpp
	serialize/serialize/XmlReader.cpp
	serialize/serialize/XmlWriter.cpp
	time/LocalTime.cpp
	lua/LuaWriter.cpp
	lua/LuaThread.cpp
	lua/LuaEngine.cpp)
	
SET( headers Serialize.hpp
	normal/normal/CommonMethod.hpp
	normal/normal/Instance.hpp
	normal/normal/DefaultValue.hpp
	normal/class/ClassMethod.hpp
	normal/convert/ConvertValue.hpp
	normal/string/StringMethod.hpp 
	normal/string/StringTable.hpp
	normal/count/IntArray.hpp
	normal/count/IntArrayN.hpp
	normal/count/BitCount.hpp
	normal/count/Int32Count.hpp
	normal/count/IntCount.hpp
	workDirectory/WorkDirectory.hpp
	workDirectory/EappType.hpp
	log/LogEngine.hpp
	lifecycle/LifeCycle.hpp
	serialize/config/ConfigEngine.hpp
	serialize/table/TableEngine.hpp
	serialize/userDefault/UserDefault.hpp
	serialize/serialize/BinReader.hpp
	serialize/serialize/BinWriter.hpp
	serialize/serialize/BufReader.hpp
	serialize/serialize/BufWriter.hpp
	serialize/serialize/JsonReader.hpp
	serialize/serialize/JsonWriter.hpp
	serialize/serialize/TableReader.hpp
	serialize/serialize/XmlReader.hpp
	serialize/serialize/XmlWriter.hpp
	serialize/serialize/IoReader.hpp
	serialize/serialize/IoWriter.hpp
	time/LocalTime.hpp
	lua/LuaWriter.hpp
	lua/LuaThread.hpp
	lua/LuaEngine.hpp
	plugin/IPlugin.hpp)
	
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
