#!/bin/sh
mkdir tmp
cd tmp
cp -r /home/tim/repo/go/src/bitbucket.org/timabell/sql-data-viewer/package/sdv/ sdv
cd ..
docker build . -t timabell/sdv
rm -rf tmp
