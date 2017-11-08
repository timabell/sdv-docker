FROM ubuntu

COPY sdv-env.sh /
COPY tmp/sdv/ /sdv/
RUN chmod +x sdv/linux/sdv-linux-x64

# you won't want to change these as this sets up sdv to listen outside of the docker container
ENV sdvListenOn "0.0.0.0"
ENV sdvPort "8080"

# you'll want to override these with your own
ENV sdvDriver "sqlite"
ENV sdvDb "/db/Chinook_Sqlite_AutoIncrementPKs.sqlite"

# embed a test database so it works out of the box
ADD https://www.dropbox.com/s/aluj23z6ezx4ub6/Chinook_Sqlite_AutoIncrementPKs.sqlite?dl=1 /db/

CMD ["/sdv-env.sh"]

EXPOSE 8080
