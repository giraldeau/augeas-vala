#!/bin/bash

FOLDER=$(basename "$PWD")
ARCH=valastuff-augeas-vala-0.10.tar.gz

pushd .
cd ..
tar cJf $ARCH $FOLDER
rpmbuild -ta $ARCH
popd
