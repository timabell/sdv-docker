FROM ubuntu

COPY "tmp/sdv/" "/sdv/"
WORKDIR "/sdv/linux/"
RUN ["chmod", "+x", "sdv-linux-x64"]

# you won't want to change these as this sets up sdv to listen outside of the docker container
ENV LISTENON "0.0.0.0"
ENV PORT "8080"

# you'll want to override these with your own
ENV schemaexplorer_driver "sqlite"
ENV schemaexplorer_sqlite_file "/db/Chinook_Sqlite_AutoIncrementPKs.sqlite"
ENV schemaexplorer_display_name "sqlite-chinook"

# embed a test database so it works out of the box
ADD "https://www.dropbox.com/s/aluj23z6ezx4ub6/Chinook_Sqlite_AutoIncrementPKs.sqlite?dl=1" "/db/"

CMD ["./sdv-linux-x64"]

EXPOSE 8080
