#!/bin/bash
cd `dirname $0`
cd ../..
colcon build --symlink-install --packages-select ros_package_temp