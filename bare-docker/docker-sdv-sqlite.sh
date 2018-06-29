#!/bin/sh
docker run -p 8085:8080 --env DRIVER=sqlite --env DB=/data/Chinook_Sqlite_AutoIncrementPKs.sqlite -v /home/tim/Documents/projects/sql-data-viewer:/data timabell/sdv
