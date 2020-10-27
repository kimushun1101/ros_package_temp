#!/bin/bash
cd `dirname $0`

PACKAGE_NAME='package_name'
CPP_FILE_NAME='file_name'
EXECUTABLE_NAME='executable_name'

sed -i 's/pubsub_temp/'${CPP_FILE_NAME}'/g' ../CMakeLists.txt
mv ../src/pubsub_temp.cpp ../src/${CPP_FILE_NAME}.cpp

sed -i 's/talker_listener/'${EXECUTABLE_NAME}'/g' ../CMakeLists.txt
sed -i 's/talker_listener/'${EXECUTABLE_NAME}'/g' ../run.sh

sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' ../package.xml
sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' ../CMakeLists.txt
sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' ../build.sh
sed -i 's/ros_package_temp/'${PACKAGE_NAME}'/g' ../run.sh
sed -i 's/package_name/'${PACKAGE_NAME}'/g' ./reset.sh

DIR='../include/ros_package_temp'
if [ -d $DIR ];then
  mv $DIR ../../${PACKAGE_NAME}
fi

mv ../../ros_package_temp ../../${PACKAGE_NAME}