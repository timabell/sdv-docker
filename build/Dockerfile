FROM ubuntu

COPY "tmp/sse/" "/sse/"
WORKDIR "/sse/linux/"
RUN ["chmod", "+x", "schemaexplorer"]

# you won't want to change these as this sets up sse to listen outside of the docker container
ENV schemaexplorer_listen_on_address "0.0.0.0"
ENV schemaexplorer_listen_on_port "8080"

# you'll want to override these with your own
ENV schemaexplorer_driver "sqlite"
ENV schemaexplorer_sqlite_file "/db/Chinook_Sqlite_AutoIncrementPKs.sqlite"
ENV schemaexplorer_display_name "sqlite-chinook"

# embed a test database so it works out of the box
COPY "tmp/Chinook_Sqlite_AutoIncrementPKs.sqlite" "/db/"

CMD ["./schemaexplorer"]

EXPOSE 8080
