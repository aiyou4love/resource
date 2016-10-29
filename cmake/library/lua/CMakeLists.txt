project(lua)

set( prefixs ${SRC_ROOT}/library/${PROJECT_NAME} )

set( sources
	lapi.c
	lauxlib.c
	lbaselib.c
	lbitlib.c
	lcode.c
	lcorolib.c
	lctype.c
	ldblib.c
	ldebug.c
	ldo.c
	ldump.c
	lfunc.c
	lgc.c
	linit.c
	liolib.c
	llex.c
	lmathlib.c
	lmem.c
	loadlib.c
	lobject.c
	lopcodes.c
	loslib.c
	lparser.c
	lstate.c
	lstring.c
	lstrlib.c
	ltable.c
	ltablib.c
	ltm.c
	luauser.c
	lundump.c
	lutf8lib.c
	lvm.c
	lzio.c
	lua_tinker.cpp )

SET( headers
	lapi.h
	lauxlib.h
	lcode.h
	lctype.h
	ldebug.h
	ldo.h
	lfunc.h
	lgc.h
	llex.h
	llimits.h
	lmem.h
	lobject.h
	lopcodes.h
	lparser.h
	lprefix.h
	lstate.h
	lstring.h
	ltable.h
	ltm.h
	lua.h
	luaconf.h
	lualib.h
	luauser.h
	lundump.h
	lvm.h
	lzio.h
	lua.hpp
	lua_tinker.h
	lua_tinker_stackobj.h
	type_traits_ext.h )
	
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
