ROOT=`pwd`
ART_DIR=$ROOT/artifacts

rm -rf $ART_DIR
mkdir -p $ART_DIR

# Copy Windows artifacts
mkdir -p $ART_DIR/Windows
cp $ROOT/build_windows/src/app/*.exe $ART_DIR/Windows

# Copy Linux artifacts
mkdir -p $ART_DIR/Linux
cp $ROOT/build_linux/src/app/helloDemo $ART_DIR/Linux