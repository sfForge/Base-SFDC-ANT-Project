#!/bin/bash
BUILD_TEMPLATE="props/build.$1.properties"
BUILD_FILE=build.properties

if [ ! -f $BUILD_TEMPLATE ]
then
   echo "Build file $BUILD_TEMPLATE does not exist";
   exit 1
fi

if [ -f $BUILD_FILE ]
then
   rm $BUILD_FILE
fi
ln -s $BUILD_TEMPLATE $BUILD_FILE

echo "$BUILD_FILE -> $BUILD_TEMPLATE";
head -5 $BUILD_FILE
exit 0
