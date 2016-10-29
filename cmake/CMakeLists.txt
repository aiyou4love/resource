##############################################################
cmake_minimum_required(VERSION 3.0)
##############################################################
if(MSVC)
	add_definitions( "-D_WIN32_WINNT=0x0601" )
	add_definitions( -D_CRT_SECURE_NO_WARNINGS )
	add_definitions( -D_SCL_SECURE_NO_WARNINGS )
else()
  set( CMAKE_CXX_FLAGS "-std=c++14" )
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
##############################################################
add_subdirectory(library)
add_subdirectory(normal)
##############################################################
