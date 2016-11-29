##############################################################
cmake_minimum_required(VERSION 3.0)
##############################################################
project(${__PROJNAME__})
##############################################################
if(MSVC)
	add_definitions( "-D_WIN32_WINNT=0x0601" )
	add_definitions( -D_CRT_SECURE_NO_WARNINGS )
	add_definitions( -D_SCL_SECURE_NO_WARNINGS )
	add_definitions( -DCURL_STATICLIB )
	set ( OUTPLATFORM windows )
else()
	include_directories(/usr/local/include)
	link_directories(/usr/local/lib)
	set( CMAKE_CXX_FLAGS "-std=c++14" )
	set ( OUTPLATFORM unix )
endif()
##############################################################
string(TOUPPER ${__PROJNAME__} __PROJDEF__)
add_definitions(-D__${__PROJDEF__}__)
##############################################################
set( SLN_ROOT $ENV{SLN_ROOT}/${__SLNAME__} )
set( RES_ROOT $ENV{SLN_ROOT}/resource )
set( SRC_ROOT $ENV{SLN_ROOT}/source )
##############################################################
include_directories($ENV{SLN_ROOT}/include)
link_directories($ENV{SLN_ROOT}/lib)
set( CMAKE_INSTALL_PREFIX ${SLN_ROOT}/binary/${OUTPLATFORM}/${__PROJNAME__} )
##############################################################
set(Boost_USE_STATIC_LIBS TRUE)
find_package(Boost COMPONENTS system exception date_time regex chrono thread filesystem log log_setup REQUIRED)
##############################################################
add_subdirectory(library)
add_subdirectory(serialize)
add_subdirectory(engine)
add_subdirectory(system)
add_subdirectory(dispatch)
add_subdirectory(aspect)
add_subdirectory(autoup)
##############################################################
