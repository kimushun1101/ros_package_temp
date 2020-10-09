#!/bin/bash
cd `dirname $0`

git reset --hard
rm -f file_name.cpp
mv ../package_name ../ros_package_temp
