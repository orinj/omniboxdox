#!/bin/bash

CHROMIUM_SRC="../../../chromium/src"

pushd $CHROMIUM_SRC
rm -rf ../doxygen_omnibox_out
doxygen ../doxygen_omnibox
popd
echo "Existing snapshot/index.html --------------------"
cat snapshot/index.html
echo "-------------------------------------------------"
rm -rf snapshot
cp -r $CHROMIUM_SRC/../doxygen_omnibox_out/html ./snapshot

echo "Don't forget to update snapshot/index.html contents div"
