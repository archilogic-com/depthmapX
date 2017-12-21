#!

# Build on OSX
# ------------
# 1. isntall qt 5.10.0:
#brew install qt
# 2. give exec permissions:
#chmod a+x ./tools/build.sh
# 2. run from depthmapX folder:
#./tools/build.sh

mkdir build
cd build
/usr/local/Cellar/qt/5.10.0/bin/qmake ../depthmapX.pro
make -j
