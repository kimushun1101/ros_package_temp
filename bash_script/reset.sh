#!/bin/bash
cd `dirname $0`
cd ..

git reset --hard
rm -f src/file_name.cpp
DIR='../include/package_name'
if [ -d $DIR ];then
  mv $DIR ../include/ros_package_temp
fi
mv ../../package_name ../../ros_package_temp
