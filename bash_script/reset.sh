#!/bin/bash
cd `dirname $0`
cd ..

git reset --hard
rm -f src/file_name.cpp
mv ../package_name ../ros_package_temp
