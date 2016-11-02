#!/bin/bash
#####################跳转到项目目录####################
cd ../..
######################保存项目名称#####################
SLNAME=$(basename $PWD)
###################跳转到编译中间目录##################
cd develop
###################跳转到编译项目目录##################
if [ ! -d $PROJNAME ];
then mkdir $PROJNAME
fi
cd $PROJNAME
#######################执行编译#######################
cmake $SLN_ROOT/resource/cmake -D__SLNAME__=$SLNAME -D__PROJNAME__=$PROJNAME
make
make install
#######################编译完成#######################
