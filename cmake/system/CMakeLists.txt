project(system)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources System.cpp
	ui/manager/UiManager.cpp
	ui/manager/UiName.cpp
	ui/console/CommandArgs.cpp
	ui/console/CommandBat.cpp
	ui/console/ConsoleInput.cpp
	ui/console/ConsoleUiUpdate.cpp
	ui/console/ConsoleGameUpdate.cpp
	ui/console/ConsoleInputClone.cpp
	ui/console/ConsoleUiUpdateClone.cpp
	ui/console/ConsoleGameUpdateClone.cpp
	ui/console/ConsoleItem.cpp
	ui/console/ConsoleUi.cpp
	ui/console/ConsoleScene.cpp
	ui/console/ConsoleEngine.cpp
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
	server/info/ServerItem.cpp
	server/info/ServerInfo.cpp
	server/client/ServerEngine.cpp
	server/server/ServerEngine.cpp
	role/role/Role.cpp
	role/role/RoleEngine.cpp
	role/role/RoleUpdate.cpp
	role/role/RoleUpdateClone.cpp
	role/agent/cRole.cpp
	role/agent/cRoleEngine.cpp
	role/client/cRole.cpp
	role/client/cRoleEngine.cpp
	role/client/cRoleList.cpp
	role/client/cRoleListResult.cpp
	role/client/RoleItem.cpp
	role/game/cRole.cpp
	role/game/cRoleEngine.cpp
	role/social/cRole.cpp
	role/social/cRoleEngine.cpp
	application/Application.cpp
	application/ApplicationUpdate.cpp
	application/ApplicationUpdateClone.cpp
	application/ApplicationEngine.cpp
	account/account/Account.cpp
	account/account/AccountEngine.cpp
	account/agent/cAccount.cpp
	account/agent/cAccountEngine.cpp
	account/client/cLoginResult.cpp
	account/client/cRoleResult.cpp
	account/client/cAccount.cpp
	account/client/cAccountEngine.cpp)
	
SET( headers System.hpp
	ui/manager/IUiEngine.hpp
	ui/manager/EuiEngine.hpp
	ui/manager/EuiScene.hpp
	ui/manager/UiName.hpp
	ui/manager/UiManager.hpp
	ui/console/CommandArgs.hpp
	ui/console/CommandBat.hpp
	ui/console/ConsoleInput.hpp
	ui/console/ConsoleUiUpdate.hpp
	ui/console/ConsoleGameUpdate.hpp
	ui/console/ConsoleInputClone.hpp
	ui/console/ConsoleUiUpdateClone.hpp
	ui/console/ConsoleGameUpdateClone.hpp
	ui/console/ConsoleItem.hpp
	ui/console/ConsoleUi.hpp
	ui/console/ConsoleScene.hpp
	ui/console/ConsoleEngine.hpp
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
	server/info/ServerItem.hpp
	server/info/ServerInfo.hpp
	server/client/ServerEngine.hpp
	server/server/ServerEngine.hpp
	role/role/Role.hpp
	role/role/RoleEngine.hpp
	role/role/RoleUpdate.hpp
	role/role/RoleUpdateClone.hpp
	role/agent/cRole.hpp
	role/agent/cRoleEngine.hpp
	role/client/cRole.hpp
	role/client/cRoleEngine.hpp
	role/client/cRoleList.hpp
	role/client/cRoleListResult.hpp
	role/client/RoleItem.hpp
	role/client/EroleId.hpp
	role/game/cRole.hpp
	role/game/cRoleEngine.hpp
	role/social/cRole.hpp
	role/social/cRoleEngine.hpp
	EdispatchId.hpp
	application/Application.hpp
	application/ApplicationUpdate.hpp
	application/ApplicationUpdateClone.hpp
	application/ApplicationEngine.hpp
	account/account/Account.hpp
	account/account/AccountEngine.hpp
	account/agent/cAccount.hpp
	account/agent/cAccountEngine.hpp
	account/client/cLoginResult.hpp
	account/client/cRoleResult.hpp
	account/client/cAccount.hpp
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
