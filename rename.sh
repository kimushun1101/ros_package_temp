#!/bin/bash
cd `dirname $0`

PACKAGE_NAME='package_name'
CPP_FILE_NAME='file_name'
EXECUTABLE_NAME='executable_name'

sed -i 's/pubsub_temp/'${CPP_FILE_NAME}'/g' CMakeLists.txt
mv src/pubsub_temp.cpp src/${CPP_FILE_NAME}.cpp

sed -i 's/talker_listner/'${EXECUTABLE_NAME}'/g' CMakeLists.txt

sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' package.xml
sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' CMakeLists.txt
sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' build.sh
mv ../ros_package_temp ../${PACKAGE_NAME}
