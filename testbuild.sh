#!/bin/bash

FOLDER=$(basename "$PWD")
ARCH=$FOLDER.tar.xz

pushd .
cd ..
tar cJf $ARCH $FOLDER
rpmbuild -ta $ARCH
popd
