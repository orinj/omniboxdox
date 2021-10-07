#!/bin/bash

CHROMIUM_SRC="../../../chromium/src"

pushd $CHROMIUM_SRC
rm -rf ../doxygen_omnibox_out
doxygen ../doxygen_omnibox
popd
rm -rf snapshot
cp -r $CHROMIUM_SRC/../doxygen_omnibox_out/html ./snapshot
