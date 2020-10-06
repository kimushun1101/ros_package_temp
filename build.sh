#!/bin/bash
cd `dirname $0`
cd ../..
pwd
colcon build --symlink-install --packages-select ros_package_temp