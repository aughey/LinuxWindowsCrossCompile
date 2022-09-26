ROOT=`pwd`
WINDOWS_DIR=$ROOT/build_windows
LINUX_DIR=$ROOT/build_linux

# For gitlab (right now)
export GIT_SSL_NO_VERIFY=1

rm -rf $WINDOWS_DIR $LINUX_DIR
mkdir $WINDOWS_DIR
mkdir $LINUX_DIR

# Build windows

echo "Building Windows"

cmake --no-warn-unused-cli \
    -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/x86_64-w64-mingw32-gcc \
    -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/x86_64-w64-mingw32-g++ \
    -S$ROOT \
    -B$WINDOWS_DIR -G Ninja

cmake --build $WINDOWS_DIR --config Release --target all --

if [ $? -ne 0 ]; then
    echo "Windows Build failed"
    exit 1
fi

# Build Linux

echo "Building Linux"

cmake --no-warn-unused-cli \
    -DCMAKE_EXPORT_COMPILE_COMMANDS:BOOL=TRUE \
    -DCMAKE_BUILD_TYPE:STRING=Release \
    -DCMAKE_C_COMPILER:FILEPATH=/usr/bin/gcc \
    -DCMAKE_CXX_COMPILER:FILEPATH=/usr/bin/g++ \
    -S$ROOT \
    -B$LINUX_DIR -G Ninja

cmake --build $LINUX_DIR --config Release --target all --

if [ $? -ne 0 ]; then
    echo "Windows Build failed"
    exit 1
fi

