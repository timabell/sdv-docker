#!/bin/sh
mkdir tmp
cd tmp
cp -r /home/tim/repo/schema-explorer/package/sse/ sse
cp "$HOME/Documents/projects/sql-data-viewer/Chinook_Sqlite_AutoIncrementPKs.sqlite" .
cd ..
docker build . -t timabell/sdv
rm -rf tmp
