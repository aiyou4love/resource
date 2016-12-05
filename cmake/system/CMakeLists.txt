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
	time/client/cServerTime.cpp
	task/engine/TaskConfig.cpp
	task/entity/DailyTask.cpp
	task/entity/TaskAccept.cpp
	task/entity/TaskFinish.cpp
	task/entity/EntityTask.cpp
	task/entity/SingleTask.cpp
	task/client/cTaskConfig.cpp
	task/server/cTaskConfig.cpp
	task/engine/TaskEngine.cpp
	activity/ActivityConfig.cpp
	activity/ActivityEngine.cpp
	role/role/RoleItem.cpp
	role/client/RoleEngine.cpp
	role/client/cRoleListResult.cpp
	account/account/Account.cpp
	account/account/AccountEngine.cpp
	account/agent/cAccount.cpp
	account/agent/cAccountEngine.cpp
	account/social/cAccount.cpp
	account/social/cAccountEngine.cpp
	account/client/cAccount.cpp
	account/client/cRoleResult.cpp
	account/client/cLoginResult.cpp
	account/client/cAccountEngine.cpp)
	
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
	time/client/cServerTime.hpp
	task/engine/EtaskType.hpp
	task/engine/EopenType.hpp
	task/engine/TaskConfig.hpp
	task/entity/DailyTask.hpp
	task/entity/TaskAccept.hpp
	task/entity/TaskFinish.hpp
	task/entity/EntityTask.hpp
	task/entity/SingleTask.hpp
	task/client/cTaskConfig.hpp
	task/server/cTaskConfig.hpp
	task/engine/TaskEngine.hpp
	activity/ActivityConfig.hpp
	activity/ActivityEngine.hpp
	role/role/RoleItem.hpp
	role/client/RoleEngine.hpp
	role/client/cRoleListResult.hpp
	account/account/Account.hpp
	account/account/AccountEngine.hpp
	account/agent/cAccount.hpp
	account/agent/cAccountEngine.hpp
	account/social/cAccount.hpp
	account/social/cAccountEngine.hpp
	account/client/EaccountId.hpp
	account/client/cAccount.hpp
	account/client/cRoleResult.hpp
	account/client/cLoginResult.hpp
	account/client/cAccountEngine.hpp)
	
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
