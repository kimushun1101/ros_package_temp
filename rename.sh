#!/bin/bash
cd `dirname $0`

PACKAGE_NAME='package_name'
sed 's/ros_package_temp/'${PACKAGE_NAME}'/g' package.xml
