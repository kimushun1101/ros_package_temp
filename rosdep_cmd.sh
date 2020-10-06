#!/bin/bash
cd `dirname $0`
cd ../..
pwd
rosdep install -i --from-path src --rosdistro dashing -y