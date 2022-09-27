BUILDLOG=/tmp/build$$.log

echo "=== GIT SHOW ===" > $BUILDLOG
git show >> $BUILDLOG

echo "=== BUILD ===" >> $BUILDLOG
sh run-build.sh | tee -a $BUILDLOG
sh copy-artifacts.sh
cp $BUILDLOG artifacts/build.log