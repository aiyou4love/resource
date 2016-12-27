project(dispatch)

set( prefixs ${SRC_ROOT}/${PROJECT_NAME} )

set( sources Dispatch.cpp
	application/Application.cpp
	application/ApplicationUpdate.cpp
	application/ApplicationUpdateClone.cpp
	application/ApplicationEngine.cpp
	account/account/Account.cpp
	account/account/AccountEngine.cpp
	account/account/AccountUpdate.cpp
	account/account/AccountUpdateClone.cpp
	account/agent/cAccount.cpp
	account/agent/cAccountEngine.cpp
	account/social/cAccount.cpp
	account/social/cAccountEngine.cpp
	account/client/cAccount.cpp
	account/client/cRoleResult.cpp
	account/client/cLoginResult.cpp
	account/client/cAccountEngine.cpp)
	
SET( headers Dispatch.hpp EdispatchId.hpp
	application/Application.hpp
	application/ApplicationUpdate.hpp
	application/ApplicationUpdateClone.hpp
	application/ApplicationEngine.hpp
	account/account/Account.hpp
	account/account/AccountEngine.hpp
	account/account/AccountUpdate.hpp
	account/account/AccountUpdateClone.hpp
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
