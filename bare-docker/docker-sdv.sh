#!/bin/sh
echo Container will expose sdv on port 8085 to all interfaces.
echo Point your browser at http://localhost:8085/
echo 'Use `docker stop ...` to halt the container (ctrl-c won''t work)'
echo

docker run -p 8085:8080 timabell/sdv
