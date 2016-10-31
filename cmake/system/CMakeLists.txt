project(system)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources System.cpp
	ui/manager/UiManager.cpp
	ui/console/CommandArgs.cpp
	ui/console/CommandBat.cpp
	ui/console/ConsoleInput.cpp
	ui/console/ConsoleUpdate.cpp
	ui/console/ConsoleInputClone.cpp
	ui/console/ConsoleUpdateClone.cpp
	ui/console/ConsoleItem.cpp
	ui/console/ConsoleUi.cpp
	ui/console/ConsoleEngine.cpp
	server/ServerItem.cpp
	server/ServerEngine.cpp
	time/time/TimeAdjust.cpp
	time/time/TimeBegin.cpp
	time/time/TimeCount.cpp
	time/time/TimeEnd.cpp
	time/time/TimeStart.cpp
	time/time/TimeDuration.cpp
	time/time/ServerTime.cpp
	time/time/TimeEngine.cpp
	time/server/cServerTime.cpp
	time/client/cServerTime.cpp)
	
SET( headers System.hpp
	ui/manager/IUiEngine.hpp
	ui/manager/UiManager.hpp
	ui/console/CommandArgs.hpp
	ui/console/CommandBat.hpp
	ui/console/ConsoleInput.hpp
	ui/console/ConsoleUpdate.hpp
	ui/console/ConsoleInputClone.hpp
	ui/console/ConsoleUpdateClone.hpp
	ui/console/ConsoleItem.hpp
	ui/console/ConsoleUi.hpp
	ui/console/ConsoleEngine.hpp
	server/ServerItem.hpp
	server/ServerEngine.hpp
	time/time/EtimeBegin.hpp
	time/time/EtimeCount.hpp
	time/time/EtimeEnd.hpp
	time/time/EtimeStart.hpp
	time/time/EtimeState.hpp
	time/time/EtimeType.hpp
	time/time/TimeAdjust.hpp
	time/time/TimeBegin.hpp
	time/time/TimeCount.hpp
	time/time/TimeEnd.hpp
	time/time/TimeStart.hpp
	time/time/TimeDuration.hpp
	time/time/ServerTime.hpp
	time/time/TimeEngine.hpp
	time/server/cServerTime.hpp
	time/client/cServerTime.hpp)
	
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
