#!/bin/sh

# run on ubuntu-14.04

sudo add-apt-repository --yes ppa:beineri/opt-qt571-trusty
sudo add-apt-repository --yes ppa:fkrull/deadsnakes
sudo apt-get update -qq

sudo apt-get -y install build-essential qt573d qt57tools libgl1-mesa-dev libglu1-mesa-dev python3.5

source /opt/qt57/bin/qt57-env.sh

mkdir build && cd build

/opt/qt57/bin/qmake ../depthmapX.pro
make

#./cliTest/cliTest && ./GuiUnitTest/GuiUnitTest && ./salaTest/salaTest && ./genlibTest/genlibTest
#cd ../RegressionTest/test && python3.5 test_main.py && cd .. && python3.5 RegressionTestRunner.py && python3.5 RegressionTestRunner.py regressionconfig_agents.json
