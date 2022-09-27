BUILDLOG=/tmp/build$$.log

echo "=== GIT SHOW ===" > $BUILDLOG
git show --oneline -s >> $BUILDLOG

echo "=== BUILD ===" >> $BUILDLOG
sh run-build.sh tee -a $BUILDLOG
sh copy_artifacts.sh
cp $BUILDLOG artifacts/build.log