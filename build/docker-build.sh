#!/bin/sh
mkdir tmp
# curl -L -o tmp/sdv.zip https://www.dropbox.com/s/0q3sznge2bfos3x/sdv.zip?dl=0
cd tmp
# unzip sdv.zip
cp -r /home/tim/repo/go/src/bitbucket.org/timabell/sql-data-viewer/package/sdv/ sdv
cd ..
docker build . -t timabell/sdv
rm -rf tmp
