# This script builds the auth service and spins up the docker container.
# It also runs the tests to ensure that the auth service is working as expected.

#!/bin/bash
cd services/auth
rm -rf target
../../mvnw clean install
cd ../..

docker build -t auth-service services/auth --no-cache
# docker-compose up --build --force-recreate
